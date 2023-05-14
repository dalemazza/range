variable "pm_host" {
    default = "192.168"
}
variable "win10_template" {
    default = "win10_template"
}
variable "win_server_template" {
    default = "server_16_template"
}
variable "wkst_ram" {
    description = "Enter the amount if ram you would like on the workstations"
    default = "4096"
}
variable "server_ram" {
    description = "Enter the amount of ram on the servers you would like"
    default = "8192"
}
variable "win_server_amount" {
    description = "Enter the amount of windows servers you want creating"
    default = "1"
}
variable "win_workstation_amount" {
    description = "Enter the amount of windows workstations you want creating"
    default = "1"
}
variable "server_ips" {
  description = "List of ip addresses for master nodes"
  type        = list(string)
  default     = [
    "192.168.1.128",
  ]
}
variable "workstations_ips" {
  description = "List of ip addresses for worker nodes"
  type        = list(string)
  default     = [  
    "192.168.1.130",
  ]
}
variable "networkrange" {
  description = "Enter as 8,16,22,24,etc. hint: 10.0.0.0/8"
  default = 192.168.1.0/24
}
variable "gateway" {
  description = "Enter your network gateway."
  default = "192.168.1.1"
}