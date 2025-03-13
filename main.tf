variable "space_count" {
  default = 45
}

resource "spacelift_space" "spaces" {
  count            = var.space_count
  name             = "space-${count.index + 1}"
  description      = "This is space number ${count.index + 1}."
  parent_space_id  = count.index == 0 ? "root" : spacelift_space.spaces[count.index - 1].id
  inherit_entities = true

  # Ensure Terraform creates spaces in order
  depends_on = count.index == 0 ? [] : [spacelift_space.spaces[count.index - 1]]
}
