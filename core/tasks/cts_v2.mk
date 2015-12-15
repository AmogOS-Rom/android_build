# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

test_suite_name := cts_v2
test_suite_tradefed := cts-tradefed_v2
test_suite_dynamic_config := cts/tools/cts-tradefed/DynamicConfig.xml
test_suite_readme := cts/tools/cts-tradefed/README

include $(BUILD_SYSTEM)/tasks/tools/compatibility.mk

.PHONY: cts_v2
cts_v2: $(compatibility_zip)
$(call dist-for-goals, cts_v2, $(compatibility_zip))
