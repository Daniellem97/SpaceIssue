locals {
  space_count = 45
  spaces = { for i in range(1, local.space_count + 1) :
    i => {
      name        = "space-${i}"
      parent_id   = i == 1 ? "root" : spacelift_space["${i - 1}"].id
      description = "This is space number ${i}."
    }
  }
}

resource "spacelift_space" "spaces" {
  for_each         = local.spaces
  name             = each.value.name
  description      = each.value.description
  parent_space_id  = each.value.parent_id
  inherit_entities = true
}
