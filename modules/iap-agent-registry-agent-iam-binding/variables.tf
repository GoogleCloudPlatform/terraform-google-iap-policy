/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs."
}

variable "location" {
  type        = string
  description = "The location of the resource."
}

variable "agent_id" {
  type        = string
  description = "The ID of the Agent Registry agent."
}

variable "role" {
  type        = string
  description = "The role that should be applied. E.g., roles/iap.egressor."
}

variable "members" {
  type        = list(string)
  description = "Identities that will be granted the privilege in the role."
  default     = []
}

variable "condition" {
  description = "An optional IAM Condition for the binding."
  type = object({
    title       = string
    description = optional(string)
    expression  = string
  })
  default = null
}

variable "agent_engine_effective_ids" {
  type        = list(string)
  description = "List of Reasoning Engine effective identities to be dynamically formatted and added to the IAM binding members."
  default     = []
}
