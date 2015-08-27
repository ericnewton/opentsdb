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

HADOOP_COMMON_LANG_VERSION := 2.4
HADOOP_COMMON_LANG := third_party/commons-lang/commons-lang-$(HADOOP_COMMON_LANG_VERSION).jar
HADOOP_COMMON_LANG_BASE_URL := http://search.maven.org/remotecontent?filepath=commons-lang/commons-lang/$(HADOOP_COMMON_LANG_VERSION)

$(HADOOP_COMMON_LANG): $(HADOOP_COMMON_LANG).md5
	set dummy "$(HADOOP_COMMON_LANG_BASE_URL)" "$(HADOOP_COMMON_LANG)"; shift; $(FETCH_DEPENDENCY)

THIRD_PARTY += $(HADOOP_COMMON_LANG)
