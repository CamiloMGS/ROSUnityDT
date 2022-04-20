
(cl:in-package :asdf)

(defsystem "ros_unity_robotics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Color_Object" :depends-on ("_package_Color_Object"))
    (:file "_package_Color_Object" :depends-on ("_package"))
    (:file "Robot_Joints" :depends-on ("_package_Robot_Joints"))
    (:file "_package_Robot_Joints" :depends-on ("_package"))
  ))