// Copyright 2022 Nexient LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "dns" {
  description = "DNS/Subdomain to create"
  type        = string
}

variable "domain" {
  description = "Domain/Hosted Zone"
  type        = string
}

variable "zone_id" {
  description = "Domain Hosted Zone id"
  type        = string
}

variable "alias_dns" {
  description = "DNS to Alias (e.g.; ALB DNS)"
  type        = string
}

variable "alias_zone_id" {
  description = "DNS Alias Zone ID (e.g.; ALB DNS Zone ID)"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to all resources created."
  type        = map(string)
  default     = {}
}
