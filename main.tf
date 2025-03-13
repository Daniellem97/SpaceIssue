variable "space_count" {
  default = 45
}

resource "spacelift_space" "spaces" {
  for_each = { for i in range(1, var.space_count + 1) :
    format("space-%d", i) => {
      name        = format("space-%d", i)
      parent_id   = i == 1 ? "root" : spacelift_space.spaces[format("space-%d", i - 1)].id
      description = "This is space number ${i}."
    }
  }

  name             = each.value.name
  description      = each.value.description
  parent_space_id  = each.value.parent_id
  inherit_entities = true
}
