# Copyright (C) 2013  The OpenTSDB Authors.
#
# This library is free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License, or
# (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this library.  If not, see <http://www.gnu.org/licenses/>.

CURATOR_FRAMEWORK_VERSION := 2.1.0-incubating
CURATOR_FRAMEWORK := third_party/curator-client/curator-client-$(CURATOR_FRAMEWORK_VERSION).jar
CURATOR_FRAMEWORK_BASE_URL := http://search.maven.org/remotecontent?filepath=org/apache/curator/curator-client/$(CURATOR_FRAMEWORK_VERSION)

$(CURATOR_FRAMEWORK): $(CURATOR_FRAMEWORK).md5
	set dummy "$(CURATOR_FRAMEWORK_BASE_URL)" "$(CURATOR_FRAMEWORK)"; shift; $(FETCH_DEPENDENCY)

THIRD_PARTY += $(CURATOR_FRAMEWORK)
