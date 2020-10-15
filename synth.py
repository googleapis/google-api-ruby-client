# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""This script is used to synthesize generated parts of this library."""

from synthtool.__main__ import extra_args
import synthtool as s
import synthtool.log as log
import synthtool.shell as shell
import logging
import os

logging.basicConfig(level=logging.DEBUG)
s.metadata.set_track_obsolete_files(False)  # TODO: enable again.

command = [
    "docker",
    "run",
    "--rm",
    f"-v{os.getcwd()}:/workspace",
    "-v/var/run/docker.sock:/var/run/docker.sock",
    "-w", "/workspace",
    "--entrypoint", "script/synth.rb",
    "gcr.io/cloud-devrel-kokoro-resources/yoshi-ruby/autosynth"]
if extra_args():
    command.extend(extra_args())

log.debug(f"Running: {' '.join(command)}")
shell.run(command, hide_output=False)
