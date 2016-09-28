<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <sch:pattern>
        <sch:rule context="p">
            <sch:report test="starts-with(., 'Warning:')" role="warning" sqf:fix="createWarningFromParagraph"
                see="http://www.oxygenxml.com/styleguide/notes.html">
                Warning notes should be marked up with a "note" 
                element setting its "type" attribute to "warning"!
            </sch:report>
            <sqf:fix id="createWarningFromParagraph" use-when="not(* or comment() or processing-instruction())">
                <sqf:description>
                    <sqf:title>Create a warning note</sqf:title>
                </sqf:description>
                <sqf:replace target="note" node-type="element">
                    <xsl:attribute name="type">warning</xsl:attribute>
                    <xsl:value-of select="normalize-space(substring-after(., 'Warning:'))"/>
                </sqf:replace>
            </sqf:fix>
        </sch:rule>
    </sch:pattern>

</sch:schema>
