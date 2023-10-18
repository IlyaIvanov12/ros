#!/ust/bin/env
import rospy
from glass_ladder.msg import Ladder


class Logger:
    def __init__(self):
        self.log = ""


    def listener(self):
        rospy.init_node("Subscriber_Node", anonymous=True)
        rospy.Subscriber("game_publisher", Ladder, self.callback)
        rospy.spin()
        
        
    def callback(self, data):
        if data.msg and data.msg != "":  
            self.log += data.msg
            rospy.loginfo(self.log) 
           
        



if __name__ == "__main__":
    try:
        start = Logger().listener()
    except rospy.ROSInterruptException:
        pass
