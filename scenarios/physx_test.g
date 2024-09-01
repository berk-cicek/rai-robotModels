world: { multibody: true }

table (world): {
 shape: ssBox, Q: "t(0 0. .6)", size: [1., 2., .1, .02], color: [.3, .3, .3]
 fixed, contact, logical:{ }
 friction: .1
}

box (table): {
 shape: ssBox, Q: "t(.2 0. .15)", size: [.2, .2, .2, .02], color: [.6, .6, .6]
 dynamic: true,contact,
 mass: 1
 joint: free
 friction: .1
}


box_2 (table): {
 shape: ssBox, Q: "t(.2 -0.3 .15)", size: [.2, .2, .2, .02], color: [.6, .6, .6]
 dynamic: true,contact,
 mass: 1
 joint: free
 friction: .1
}

#Include: <panda_fixGripper.g>
#Include: <panda_fixRobotiq.g>
Include: <../panda/panda.g>
(table panda_base): { joint: rigid, Q: "t(.3 .8 .05) d(-90 0 0 1)" }

Edit panda_finger_joint1: { joint_active: false }
