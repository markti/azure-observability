variable "primary_location" {
  type = string
}
variable "secondary_location" {
  type = string
}
variable "short_term_retention" {
  type    =  number
  default = 90
}
variable "long_term_retention" {
  type    = number
  default = 365
}