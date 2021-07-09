variable "repo_names" {
  description = "List of ECR Repo Names"
  type        = list(string)
  default     = []
}


variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  type        = string
  default     = "MUTABLE"
  validation {
    condition     = var.image_tag_mutability == "MUTABLE" || var.image_tag_mutability == "IMMUTABLE"
    error_message = "Wrong value for image_tag_mutability. Select from MUTABLE or IMMUTABLE."
  }
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

