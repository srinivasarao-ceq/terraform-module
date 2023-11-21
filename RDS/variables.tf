
variable "db_subnet_group_name" {
  type        = string
  description = "Enter db_subnet_group_name"
}

variable "subnet_ids" {
   type        = list(string)
   description = "private subnet values"
}

variable "engine" {
   type        = string
   description = "Enter engine"
}

variable "instance_class" {
   type        = string
   description = "Enter instance_class "
}

variable "allocated_storage" {
   type        = number
   description = "Enter allocated_storage" 
}

variable "identifier" {
   type        = string
   description = "Enter identifier"
}

variable "db_name" {
   type        = string
   description = "Enter db_name"   
}

variable "username" {
   type        = string
   description = "Enter username"
}

variable "skip_final_snapshot" {
   type        = bool
   description = "Enter skip_final_snapshot"
}

variable "multi_az" {
   type        = bool
   description = "Enter multi_az"
}

variable "rds_security_groups" {
   type = string
}

variable "project-name" {
  type        = string
  description = "Enter project name"
}

variable "Environment" {
  type        = string
  description = "Enter environment"
}

variable "tags" {
  type        = map(string)
  description = "Extra tags to attach to the resources"
}


