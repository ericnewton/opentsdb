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

ACCUMULO_OPENTSDB_VERSION := 0.0.1-SNAPSHOT
ACCUMULO_OPENTSDB := third_party/accumulo-opentsdb/accumulo-opentsdb-$(ACCUMULO_OPENTSDB_VERSION).jar
ACCUMULO_OPENTSDB_BASE_URL := https://github.com/ericnewton/yadda/yadda/$(ACCUMULO_OPENTSDB_VERSION)

$(ACCUMULO_OPENTSDB): $(ACCUMULO_OPENTSDB).md5
	set dummy "$(ACCUMULO_OPENTSDB_BASE_URL)" "$(ACCUMULO_OPENTSDB)"; shift; $(FETCH_DEPENDENCY)

THIRD_PARTY += $(ACCUMULO_OPENTSDB)
