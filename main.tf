resource "spacelift_space" "first" {
  inherit_entities = true
  name             = "first"
  parent_space_id  = "root"
}

resource "spacelift_space" "second" {
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "second"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "second_space" {
  depends_on       = [spacelift_space.second]
  inherit_entities = true
  name             = "second-test-space"
  parent_space_id  = spacelift_space.second.id
}

resource "spacelift_space" "third_space" {
  depends_on       = [spacelift_space.second]
  inherit_entities = true
  name             = "third_space"
  parent_space_id  = spacelift_space.second.id
}

resource "spacelift_space" "fourth_space" {
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "fourth"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "fifth_space" {
  depends_on       = [spacelift_space.fourth_space]
  inherit_entities = true
  name             = "fifth_space"
  parent_space_id  = spacelift_space.fourth_space.id
}

resource "spacelift_space" "sixth_space" {
  depends_on       = [spacelift_space.fourth_space]
  inherit_entities = true
  name             = "sixth_space"
  parent_space_id  = spacelift_space.fourth_space.id
}

resource "spacelift_space" "seventh_space" {
  depends_on       = [spacelift_space.fourth_space]
  inherit_entities = true
  name             = "seventh_space"
  parent_space_id  = spacelift_space.fourth_space.id
}

resource "spacelift_space" "eight_space" {
  depends_on       = [spacelift_space.fourth_space]
  inherit_entities = true
  name             = "eight_space"
  parent_space_id  = spacelift_space.fourth_space.id
}
