# diyerdo's proto
# Copyright (C) 2026 DrLarck
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# ---
#
# Generates the go and dart code form the proto files living in proto/ directory
#!/bin/bash
#MISE description="Generates the go and dart code form the proto files living in proto/ directory"

echo "Generating go code"
protoc \
  --go_out=gen/go \
  --go-grpc_out=gen/go \
  --go_opt=paths=source_relative \
  --go-grpc_opt=paths=source_relative \
  proto/equipment_item_lookup/v1/equipment_item_lookup.proto
