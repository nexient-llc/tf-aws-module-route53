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

resource "aws_route53_record" "application" {
  zone_id = var.zone_id
  name    = "${var.dns}.${var.domain}"
  type    = "A"

  alias {
    name                   = var.alias_dns
    zone_id                = var.alias_zone_id
    evaluate_target_health = true
  }
}
