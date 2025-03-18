resource "spacelift_space" "first" {
  inherit_entities = true
  name             = "first"
  parent_space_id  = "root"
}

resource "spacelift_space" "first_security" {
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "first_security"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "first_security_audit" {
  depends_on       = [spacelift_space.first_security]
  inherit_entities = true
  name             = "first-security-audit"
  parent_space_id  = spacelift_space.first_security.id
}

resource "spacelift_space" "first_security_logs" {
  depends_on       = [spacelift_space.first_security]
  inherit_entities = true
  name             = "first-security-logs"
  parent_space_id  = spacelift_space.first_security.id
}

resource "spacelift_space" "first_shared" {
  depends_on       = [spacelift_space.first]
  inherit_entities = true
  name             = "shared"
  parent_space_id  = spacelift_space.first.id
}

resource "spacelift_space" "first_shared_iam" {
  depends_on       = [spacelift_space.first_shared]
  inherit_entities = true
  name             = "first-shared-iam"
  parent_space_id  = spacelift_space.first_shared.id
}

resource "spacelift_space" "first_shared_monitoring" {
  depends_on       = [spacelift_space.first_shared]
  inherit_entities = true
  name             = "first-shared-monitoring"
  parent_space_id  = spacelift_space.first_shared.id
}

resource "spacelift_space" "first_shared_resources" {
  depends_on       = [spacelift_space.first_shared]
  inherit_entities = true
  name             = "first-shared-resources"
  parent_space_id  = spacelift_space.first_shared.id
}

resource "spacelift_space" "first_shared_tgw" {
  depends_on       = [spacelift_space.first_shared]
  inherit_entities = true
  name             = "first-shared-tgw"
  parent_space_id  = spacelift_space.first_shared.id
}
