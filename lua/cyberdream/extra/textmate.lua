local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for textmate.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>name</key>
	<string>Cyberdream</string>
	<key>settings</key>
	<array>
		<dict>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${bg}</string>
				<key>caret</key>
				<string>${fg}</string>
				<key>block_caret</key>
				<string>${grey}</string>
				<key>foreground</key>
				<string>${fg}</string>
				<key>invisibles</key>
				<string>${bg}</string>
				<key>lineHighlight</key>
				<string>${bg_highlight}</string>
				<key>selection</key>
				<string>${bg_highlight}</string>
				<key>findHighlight</key>
				<string>${cyan}</string>
				<key>findHighlightForeground</key>
				<string>${bg_alt}</string>
				<key>selectionBorder</key>
				<string>${bg}</string>
				<key>activeGuide</key>
				<string>${orange}</string>
				<key>bracketsForeground</key>
				<string>${pink}</string>
				<key>bracketsOptions</key>
				<string>underline</string>
				<key>bracketContentsForeground</key>
				<string>${fg}</string>
				<key>bracketContentsOptions</key>
				<string>underline</string>
				<key>tagsOptions</key>
				<string>stippled_underline</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Comment</string>
			<key>scope</key>
			<string>comment</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${grey}</string>
				<key>fontStyle</key>
				<string></string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>String</string>
			<key>scope</key>
			<string>string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Number</string>
			<key>scope</key>
			<string>constant.numeric</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Built-in constant</string>
			<key>scope</key>
			<string>constant.language</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>User-defined constant</string>
			<key>scope</key>
			<string>constant.character, constant.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable</string>
			<key>scope</key>
			<string>variable</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Ruby's @variable</string>
			<key>scope</key>
			<string>variable.other.readwrite.instance</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>String interpolation</string>
			<key>scope</key>
			<string>constant.character.escaped, constant.character.escape, string source, string source.ruby</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>#ff5ef1</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Ruby Regexp</string>
			<key>scope</key>
			<string>source.ruby string.regexp.classic.ruby,source.ruby string.regexp.mod-r.ruby</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>#ff6e5e</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword</string>
			<key>scope</key>
			<string>keyword</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
        <dict>
            <key>name</key>
            <string>Keyword Operator</string>
            <key>scope</key>
            <string>keyword.operator</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>${purple}</string>
            </dict>
        </dict>
		<dict>
			<key>name</key>
			<string>Storage</string>
			<key>scope</key>
			<string>storage</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage type</string>
			<key>scope</key>
			<string>storage.type</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage Type Namespace</string>
			<key>scope</key>
			<string>storage.type.namespace</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage Type Class</string>
			<key>scope</key>
			<string>storage.type.class</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Class name</string>
			<key>scope</key>
			<string>entity.name.class</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>underline</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Meta Path</string>
			<key>scope</key>
			<string>meta.path</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>underline</string>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Inherited class</string>
			<key>scope</key>
			<string>entity.other.inherited-class</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic underline</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Function name</string>
			<key>scope</key>
			<string>entity.name.function</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Function argument</string>
			<key>scope</key>
			<string>variable.parameter</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Tag name</string>
			<key>scope</key>
			<string>entity.name.tag</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Tag attribute</string>
			<key>scope</key>
			<string>entity.other.attribute-name</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Library function</string>
			<key>scope</key>
			<string>support.function</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Library constant</string>
			<key>scope</key>
			<string>support.constant</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Library class&#x2f;type</string>
			<key>scope</key>
			<string>support.type, support.class</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Library variable</string>
			<key>scope</key>
			<string>support.other.variable</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string></string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Support Other Namespace</string>
			<key>scope</key>
			<string>support.other.namespace</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid</string>
			<key>scope</key>
			<string>invalid</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${pink}</string>
				<key>fontStyle</key>
				<string></string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid deprecated</string>
			<key>scope</key>
			<string>invalid.deprecated</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${purple}</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON String</string>
			<key>scope</key>
			<string>meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>diff.header</string>
			<key>scope</key>
			<string>meta.diff, meta.diff.header</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${grey}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>diff.deleted</string>
			<key>scope</key>
			<string>markup.deleted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ff6e5e</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>diff.inserted</string>
			<key>scope</key>
			<string>markup.inserted</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>diff.changed</string>
			<key>scope</key>
			<string>markup.changed</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>scope</key>
			<string>constant.numeric.line-number.find-in-files - match</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ff5ef1</string>
			</dict>
		</dict>
		<dict>
			<key>scope</key>
			<string>entity.name.filename</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>scope</key>
			<string>message.error</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ff6e5e</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.string.begin.json - meta.structure.dictionary.value.json, punctuation.definition.string.end.json - meta.structure.dictionary.value.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON Structure</string>
			<key>scope</key>
			<string>meta.structure.dictionary.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON String</string>
			<key>scope</key>
			<string>meta.structure.dictionary.value.json string.quoted.double.json</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON: 6 deep</string>
			<key>scope</key>
			<string>meta meta meta meta meta meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON: 5 deep</string>
			<key>scope</key>
			<string>meta meta meta meta meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>#ff5ef1</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON: 4 deep</string>
			<key>scope</key>
			<string>meta meta meta meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON: 3 deep</string>
			<key>scope</key>
			<string>meta meta meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON: 2 deep</string>
			<key>scope</key>
			<string>meta meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>JSON:  1 deep</string>
			<key>scope</key>
			<string>meta meta.structure.dictionary.value string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>

		<!-- Markdown Tweaks -->
		<dict>
			<key>name</key>
			<string>Markup: strike</string>
			<key>scope</key>
			<string>markup.strike</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup: bold</string>
			<key>scope</key>
			<string>markup.bold</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup: italic</string>
			<key>scope</key>
			<string>markup.italic</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: heading</string>
			<key>scope</key>
			<string>markup.heading</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: List Items Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.list_item.markdown</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Blockquote</string>
			<key>scope</key>
			<string>markup.quote</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Blockquote Punctuation</string>
			<key>scope</key>
			<string>punctuation.definition.blockquote.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Separator</string>
			<key>scope</key>
			<string>meta.separator</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${grey}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup: raw inline</string>
			<key>scope</key>
			<string>text.html.markdown markup.raw.inline</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup: underline</string>
			<key>scope</key>
			<string>markup.underline</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>underline</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markup: Raw block</string>
			<key>scope</key>
			<string>markup.raw.block</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Raw Block fenced source</string>
			<key>scope</key>
			<string>markup.raw.block.fenced.markdown source</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Fenced Bode Block</string>
			<key>scope</key>
			<string>punctuation.definition.fenced.markdown, variable.language.fenced.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${grey}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Markdown: Fenced Language</string>
			<key>scope</key>
			<string>variable.language.fenced.markdown</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${grey}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Accessor</string>
			<key>scope</key>
			<string>punctuation.accessor</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Meta Function Return Type</string>
			<key>scope</key>
			<string>meta.function.return-type</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Section Block Begin</string>
			<key>scope</key>
			<string>punctuation.section.block.begin</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Section Block End</string>
			<key>scope</key>
			<string>punctuation.section.block.end</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Section Embedded Begin</string>
			<key>scope</key>
			<string>punctuation.section.embedded.begin</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Section Embedded End</string>
			<key>scope</key>
			<string>punctuation.section.embedded.end</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Punctuation Separator Namespace</string>
			<key>scope</key>
			<string>punctuation.separator.namespace</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable Function</string>
			<key>scope</key>
			<string>variable.function</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable Other</string>
			<key>scope</key>
			<string>variable.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable Language</string>
			<key>scope</key>
			<string>variable.language</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Entity Name Module Ruby</string>
			<key>scope</key>
			<string>entity.name.module.ruby</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Entity Name Constant Ruby</string>
			<key>scope</key>
			<string>entity.name.constant.ruby</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Support Function Builtin Ruby</string>
			<key>scope</key>
			<string>support.function.builtin.ruby</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${fg}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage Type Namespace CS</string>
			<key>scope</key>
			<string>storage.type.namespace.cs</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${pink}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Entity Name Namespace CS</string>
			<key>scope</key>
			<string>entity.name.namespace.cs</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
	</array>
	<key>uuid</key>
	<string>68394a4e-1404-4971-bdfc-81dd7f9d29f6</string>
	<key>colorSpaceName</key>
	<string>sRGB</string>
	<key>semanticClass</key>
	<string>theme.cyberdream</string>
	<key>author</key>
	<string>Scott McKendry</string>
</dict>
</plist>
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
