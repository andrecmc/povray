//
// Android Robot
// by andre@openbox.cc
//
// Revision History:
// 2010/10/25 - andre@openbox.cc - Initial Version
//

#include "colors.inc"
#include "textures.inc"

#declare FrontViewLocation = <0, 20, -25>;  
#declare LeftViewLocation = <25, 20, 0>;
#declare RightViewLocation = <-25, 20, 0>;

camera {
  // Front View
  location FrontViewLocation
  // Left View
  //location LeftViewLocation
  // Right View
  //location RightViewLocation

  right <4/3, 0, 0>
  up <0, 1, 0>
  sky <0, 1, 0>
  direction <0, 0, 1.8>
  look_at <0, 4, 0>
}

light_source { <-150, 450, 0> colour Gray70 }

background { colour Blue }
/*
// Floor
plane { y, 0
   pigment { colour Blue }
   finish {
      ambient 0.2
      diffuse 0.8
   }
}
*/
/*
// Floor
plane { y, 0
   pigment {
      checker colour White transmit 0.90 colour Gray transmit 0.90
      scale 20
   }
   finish {
      ambient 0.2
      diffuse 0.8
   }
}



// Mirror on Back
plane { z, 10
   hollow on
   pigment { colour White }
   finish {
     ambient 0
     diffuse 0.1
     specular 1
     roughness 0.00001
     reflection 0.8
   }
}
*/

merge {
// Head
intersection {
sphere { <0.0, 7.5, 0.0>, 2
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
box { <-2.0,7.5,-2.0>,<2.0,9.5,2.0> }
}

// Eyes

// Right Eye
sphere { <-1.0, 8.5, -1.25>, 0.25
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 1 green 1 blue 1 }
}

// Left Eye
sphere { <1.0, 8.5, -1.25>, 0.25
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 1 green 1 blue 1 }
}

// Anthenas
cylinder {
   <-1.0, 9.2, 0>, <-1.25, 9.9, 0.0>, 0.15
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <-1.25, 9.9, 0.0>, 0.15
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}

cylinder {
   <1.0, 9.2, 0>, <1.25, 9.9, 0.0>, 0.15
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <1.25, 9.9, 0.0>, 0.15
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}

}

// Neck
cylinder {
   <0, 7, 0>, <0.0, 8.0, 0.0>, 1.8
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 1 green 1 blue 1 }
}

// Body
cylinder {
   <0, 3, 0>, <0.0, 7.0, 0.0>, 2
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}

// Legs
merge {
cylinder {
   <-1, 0.5, 0>, <-1.0, 3.0, 0.0>, 0.5
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <-1.0, 0.5, 0>, 0.5
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
}

merge {
cylinder {
   <1, 0.5, 0>, <1.0, 3.0, 0.0>, 0.5
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <1.0, 0.5, 0>, 0.5
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
}

// Arms

#declare ArmRadius = 0.5;
                     
merge {
// Right Arm (Raised)
cylinder {
   <-2.75, 5.5, 0>, <-2.75, 8.0, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <-2.75, 5.5, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <-2.75, 8.0, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
}
                 
merge {
// Left Arm (Lowered)
cylinder {
   <2.75, 7.0 - ArmRadius, 0>, <2.75, 4.5, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <2.75, 4.5, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
sphere { <2.75, 7.0 - ArmRadius, 0.0>, ArmRadius
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 0 green 1 blue 0 }
}
}

cylinder {
   <-1.25, 6.0, 0>, <-3.0, 6.0, 0.0>, ArmRadius*3/4
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 1 green 1 blue 1 }
}

cylinder {
   <1.25, 6.0, 0>, <3.0, 6.0, 0.0>, ArmRadius*3/4
   finish {
      ambient 0.2
      diffuse 0.8
      phong 1
      reflection {0.5 metallic}
   }
   pigment { color red 1 green 1 blue 1 }
}
