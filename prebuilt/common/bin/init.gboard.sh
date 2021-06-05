#! /vendor/bin/sh

# Copyright (c) 2020-2021, RohieOS
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

flags=/data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
if [ -f $flags ]; then
sed -i 's/"enable_keyboard_redesign" value="false"/"enable_keyboard_redesign" value="true"/g' $flags
sed -i 's/"use_keyboard_redesign_theme_by_default" value="false"/"use_keyboard_redesign_theme_by_default" value="true"/g' $flags
sed -i 's/"enable_keyboard_redesign_theme" value="false"/"enable_keyboard_redesign_theme" value="true"/g' $flags
sed -i 's/"themed_nav_bar_style" value="0"/"themed_nav_bar_style" value="2"/g' $flags
sed -i 's/"themed_nav_bar_style" value="1"/"themed_nav_bar_style" value="2"/g' $flags
sed -i 's/"use_keyboard_redesign_on_existing_theme" value="false"/"use_keyboard_redesign_on_existing_theme" value="true"/g' $flags
sed -i 's/"use_keyboard_redesign_on_existing_theme_on_all_users" value="false"/"use_keyboard_redesign_on_existing_theme_on_all_users" value="true"/g' $flags
sed -i 's/"enable_clipboard_screenshot_paste" value="false"/"enable_clipboard_screenshot_paste" value="true"/g' $flags
sed -i 's/"show_branding_on_space" value="false"/"show_branding_on_space" value="true"/g' $flags
sed -i 's/"show_branding_interval_seconds" value="86400000"/"show_branding_interval_seconds" value="0"/g' $flags
sed -i 's/"branding_fadeout_delay_ms" value="900"/"branding_fadeout_delay_ms" value="99999999999"/g' $flags
am force-stop com.google.android.inputmethod.latin
fi
