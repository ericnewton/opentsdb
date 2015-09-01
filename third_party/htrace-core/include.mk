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

HTRACE_VERSION := 3.1.0-incubating
HTRACE := third_party/htrace-core/htrace-core-$(HTRACE_VERSION).jar
HTRACE_BASE_URL := http://search.maven.org/remotecontent?filepath=org/apache/htrace/htrace-core/$(HTRACE_VERSION)

$(HTRACE): $(HTRACE).md5
	set dummy "$(HTRACE_BASE_URL)" "$(HTRACE)"; shift; $(FETCH_DEPENDENCY)

THIRD_PARTY += $(HTRACE)
