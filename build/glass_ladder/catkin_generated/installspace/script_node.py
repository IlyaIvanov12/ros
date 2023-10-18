import random
import rospy
import numpy as np
from glass_ladder.msg import Ladder
from glass_ladder.srv import ladder, ladderResponse


class Glass_ladder:
    
    def __init__(self, num) -> None:
        tmp_array = ["l", "r"]
        self.count = 0
        self.num = num
        self.array_list = [random.choice(tmp_array) for _ in range(num)]
        self.pub_response = Ladder()
        rospy.on_shutdown(self.__end_program__)
        rospy.init_node("game")
        self.pub = rospy.Publisher("game_publisher",
                               Ladder,
                               queue_size=20)
        service = rospy.Service("game_service",
                            ladder,
                            self.comparison)
        rospy.spin()
        
    def __end_program__(self):
        return ladderResponse("dead")
        
    def comparison(self, request):

        request = request.step
        if request == "l" or request == "r":
            if self.array_list[self.count] == request:
                self.pub.publish(request)
                self.count += 1
                if self.count == self.num - 1:
                    msg = "congratulations, you won"
                    return ladderResponse(msg)  
                return ladderResponse("move next")
            (rospy.signal_shutdown("game"))
        return ladderResponse("False")   


if __name__ == "__main__":
    try:
        glass = Glass_ladder(18)
    except rospy.ROSInitException:
        pass