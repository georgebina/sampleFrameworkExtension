<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <sch:pattern>
        <sch:rule context="p">
            <sch:report test="starts-with(., 'Warning:')" role="warning">
                Warning notes should be marked up with a "note" 
                element setting its "type" attribute to "warning"!
            </sch:report>
        </sch:rule>
    </sch:pattern>

</sch:schema>
