variable "total_spaces" {
  default = 45
}

resource "spacelift_space" "spaces" {
  count            = var.total_spaces
  name             = "space-${count.index + 1}"
  description      = "This is space ${count.index + 1}."
  inherit_entities = true

  parent_space_id = count.index == 0 ? "root" : spacelift_space.spaces[count.index - 1].id

  depends_on = count.index == 0 ? [] : [spacelift_space.spaces[count.index - 1]]
}
