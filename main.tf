resource "spacelift_space" "first" {
  description      = "This is a child of the root space."
  inherit_entities = true
  name             = "first"
  parent_space_id  = "root"
}

resource "spacelift_space" "second" {
  description      = "This is a child of the first space."
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "second"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "third" {
  description      = "This is a child of the second space."
  depends_on       = [spacelift_space.second]
  inherit_entities = true
  name             = "third"
  parent_space_id  = spacelift_space.second.id
}

resource "spacelift_space" "fourth" {
  description      = "This is a child of the third space."
  depends_on       = [spacelift_space.third]
  inherit_entities = true
  name             = "fourth"
  parent_space_id  = spacelift_space.third.id
}

resource "spacelift_space" "fifth" {
  description      = "This is a child of the fourth space."
  depends_on       = [spacelift_space.fourth]
  inherit_entities = true
  name             = "fifth"
  parent_space_id  = spacelift_space.fourth.id
}

resource "spacelift_space" "sixth" {
  description      = "This is a child of the fifth space."
  depends_on       = [spacelift_space.fifth]
  inherit_entities = true
  name             = "sixth"
  parent_space_id  = spacelift_space.fifth.id
}

resource "spacelift_space" "seventh" {
  description      = "This is a child of the sixth space."
  depends_on       = [spacelift_space.sixth]
  inherit_entities = true
  name             = "seventh"
  parent_space_id  = spacelift_space.sixth.id
}

resource "spacelift_space" "eighth" {
  description      = "This is a child of the seventh space."
  depends_on       = [spacelift_space.seventh]
  inherit_entities = true
  name             = "eighth"
  parent_space_id  = spacelift_space.seventh.id
}

resource "spacelift_space" "ninth" {
  description      = "This is a child of the eighth space."
  depends_on       = [spacelift_space.eighth]
  inherit_entities = true
  name             = "ninth"
  parent_space_id  = spacelift_space.eighth.id
}

resource "spacelift_space" "tenth" {
  description      = "This is a child of the ninth space."
  depends_on       = [spacelift_space.ninth]
  inherit_entities = true
  name             = "tenth"
  parent_space_id  = spacelift_space.ninth.id
}

resource "spacelift_space" "eleventh" {
  description      = "This is a child of the tenth space."
  depends_on       = [spacelift_space.tenth]
  inherit_entities = true
  name             = "eleventh"
  parent_space_id  = spacelift_space.tenth.id
}

resource "spacelift_space" "twelfth" {
  description      = "This is a child of the eleventh space."
  depends_on       = [spacelift_space.eleventh]
  inherit_entities = true
  name             = "twelfth"
  parent_space_id  = spacelift_space.eleventh.id
}

resource "spacelift_space" "thirteenth" {
  description      = "This is a child of the twelfth space."
  depends_on       = [spacelift_space.twelfth]
  inherit_entities = true
  name             = "thirteenth"
  parent_space_id  = spacelift_space.twelfth.id
}

resource "spacelift_space" "fourteenth" {
  description      = "This is a child of the thirteenth space."
  depends_on       = [spacelift_space.thirteenth]
  inherit_entities = true
  name             = "fourteenth"
  parent_space_id  = spacelift_space.thirteenth.id
}

resource "spacelift_space" "fifteenth" {
  description      = "This is a child of the fourteenth space."
  depends_on       = [spacelift_space.fourteenth]
  inherit_entities = true
  name             = "fifteenth"
  parent_space_id  = spacelift_space.fourteenth.id
}

resource "spacelift_space" "sixteenth" {
  description      = "This is a child of the fifteenth space."
  depends_on       = [spacelift_space.fifteenth]
  inherit_entities = true
  name             = "sixteenth"
  parent_space_id  = spacelift_space.fifteenth.id
}

resource "spacelift_space" "seventeenth" {
  description      = "This is a child of the sixteenth space."
  depends_on       = [spacelift_space.sixteenth]
  inherit_entities = true
  name             = "seventeenth"
  parent_space_id  = spacelift_space.sixteenth.id
}

resource "spacelift_space" "eighteenth" {
  description      = "This is a child of the seventeenth space."
  depends_on       = [spacelift_space.seventeenth]
  inherit_entities = true
  name             = "eighteenth"
  parent_space_id  = spacelift_space.seventeenth.id
}

resource "spacelift_space" "nineteenth" {
  description      = "This is a child of the eighteenth space."
  depends_on       = [spacelift_space.eighteenth]
  inherit_entities = true
  name             = "nineteenth"
  parent_space_id  = spacelift_space.eighteenth.id
}

resource "spacelift_space" "twentieth" {
  description      = "This is a child of the nineteenth space."
  depends_on       = [spacelift_space.nineteenth]
  inherit_entities = true
  name             = "twentieth"
  parent_space_id  = spacelift_space.nineteenth.id
}
