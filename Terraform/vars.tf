variable "pm_host" {
    default = "proxmox.local"
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
