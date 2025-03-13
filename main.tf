resource "spacelift_space" "first" {
  description      = "This a child of the root space."
  inherit_entities = true
  name             = "first"
  parent_space_id  = "root"
}

resource "spacelift_space" "second" {
  description      = "This a child of the first space."
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "second"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "third" {
  description      = "This a child of the second security space."
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
