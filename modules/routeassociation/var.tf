
variable "route_table_id" {
    type = string
}
variable "subnet_id" {
    type = map
}
variable "Name" {
    type = string
#  default = "EKS_RTtblassociation"
}
variable "Owner" {
  type = string
  # description = "Value used for tagging Owner"
  # default = "RadhikaN"
}

variable "Purpose" {
  type = string
  # description = "Purpose of the infrastructure creation"
  # default = "EKSProject"
}


variable "subnets" {
   type = map
   default = {
      sub-1 = {
            "subId" = "subnet-09747f4641bfff80f"}
      sub-2 = {
            "subId" =   "subnet-079b0539c957791e7"}
   }
}
