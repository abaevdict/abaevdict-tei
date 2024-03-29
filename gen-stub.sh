#!/bin/bash

ID=$(./make-id.sh $1)

cat << EOF
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xmlns:abv="http://ossetic-studies.org/ns/abaevdict" xmlns:xi="http://www.w3.org/2001/XInclude">
  <teiHeader>
    <fileDesc>
      <titleStmt>
        <title>Abaev Dictionary: entry <hi rendition="#rend_italic">$1</hi></title>
      </titleStmt>
      <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="../pubstmt.xml" parse="xml"/>
      <sourceDesc>
        <bibl xml:lang="ru"><author>Абаев, Василий Иванович</author>.
            <title>Историко-этимологический словарь осетинского языка</title>. Т. <biblScope
            unit="volume">I</biblScope>. A–Kʼ. <pubPlace>М.–Л.</pubPlace>:
            <publisher>Наука</publisher>, <date>1958</date>. С. <biblScope unit="page"
            >??–??</biblScope>.</bibl>
      </sourceDesc>
    </fileDesc>
    <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="../encodingdesc.xml" parse="xml"/>
  </teiHeader>
  <text>
    <body>
      <entry xml:id="entry_$ID" xml:lang="os" abv:completeness="incomplete">
        <form type="lemma"><orth>$1</orth></form>
        <sense><abv:tr xml:lang="ru"><q></q></abv:tr></sense>
        <abv:exampleGrp>
          <abv:example>
            <quote></quote>
          </abv:example>
        </abv:exampleGrp>
        <etym xml:lang="ru"></etym>
      </entry>
    </body>
  </text>
</TEI>
EOF
