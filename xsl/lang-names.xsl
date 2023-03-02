<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template name="lang-text">
        <xsl:param name="lang-code"/>
        <xsl:param name="name-lang"/>
        <xsl:choose>
            <xsl:when test="$lang-code = 'ab'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>абх.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Abkhaz</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'abq'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>абаз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Abaza</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'abq-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>абаз. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Abaza (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ady'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>адыг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Adyghe</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ady-x-abadz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>абадз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Abzakh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ady-x-shpsg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>шапс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Shapsug Adyghe</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ae'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ав.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Avestan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ae-x-gth'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ав. (гаты)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gathic Avestan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'agx'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>агул.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Aghul</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'aii'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ассир.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Assyrian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ain'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>айну</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ainu</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'akk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>аккад.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Akkadian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'akv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ахвах.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Akhvakh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'alt'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>алт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Altai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'alt-x-teleut'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>телеут.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Teleut Altai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ang'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>англос.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old English</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ani'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>анд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Andi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'aqc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>арчин.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Archi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ar'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>араб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Arabic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'arc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>арам.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Aramaic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'av'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>авар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Avar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'az'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>азерб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Azerbaijani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ba'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>башк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bashkir</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bat'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>балт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Baltic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bbl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>туш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bats</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bdk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>будух.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Budugh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'be'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>белорусс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Belarusian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>болг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bulgarian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bgn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>бел. (зап.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Western Balochi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bgp'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>бел. (вост.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Eastern Balochi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тибет.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tibetan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bph'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ботл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Botlikh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'br'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>брет.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Breton</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'brh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>брахуи</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Brahui</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bsk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>верш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Burushaski</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'bua'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>монг. бурят.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Buryat</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cau'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кавк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Caucasian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ccs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>картв.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>South Caucasian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ce'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чеч.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Chechen</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cel'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кельт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Celtic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'chg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чагат.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Chagatai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'chm'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mari</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cji'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чамал.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Chamalal</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cjs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>шор.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Shor</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ckb'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сорани</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sorani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ckb-x-kndln'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кандулан</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sorani (Kandulan)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cmg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>монг. письм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Classical Mongolian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'crh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>татар. (крым.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Crimean Tatar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чеш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Czech</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ст.слав.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Church Slavonic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cu-x-bg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.болг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Bulgarian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чув.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Chuvash</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>валл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Welsh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'cy-x-cymr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кимр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Cymric</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'da'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>дат.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Danish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'dar'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>дарг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Dargwa</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'dar-x-aqusha'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>акуш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Aqusha Dargwa</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'dar-x-kaitag'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кайт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kaitag Dargwa</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ddo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>дид.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tsez</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'de'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нем.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>German</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'de-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нем. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>German (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'dsb'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нижне-луж.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lower Sorbian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'egy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>древнеегипетский</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ancient Egyptian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'el'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>н.гр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Modern Greek</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'elx'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>элам.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Elamite</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'en'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>англ.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>English</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'es'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>исп.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Spanish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'et'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>эст.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Estonian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'eu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>баск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Basque</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'evn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>эвенк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Evenki</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fa'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>перс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Persian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fa-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>перс. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Persian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fa-x-krmns'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>перс. (кирманшах.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Persian (Kermanshah)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фин.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Finnish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fi-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фин. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Finnish (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>French</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fro'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ст.фр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old French</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'frp'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фр. (прованс.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Franco-Provençal</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'frs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фриз. (вост.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>East Frisian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'fy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фриз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Frisian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ga'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ирл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Irish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gbz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>габри</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Zoroastrian Dari</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gbz-x-yzd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>язди</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Yazdi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gdo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>годобер.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Godoberi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gem'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>герм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Proto-Germanic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gem-x-old'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.герм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Germanic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'glk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гилян.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gilaki</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gmh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ср.в.нем.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle High German</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gml'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ср.н.нем.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle Low German</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'gmq'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сканд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Scandinavian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'goh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.в.нем.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old High German</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'got'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гот.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gothic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'got-x-crm'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гот. (крым.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Crimean Gothic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'grc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Greek</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'grc-x-doric'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гр. дор.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Doric Greek</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hac'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гуран.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gorani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hbo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.евр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hebrew</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хинди</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hindi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hit'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хетт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hittite</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хорв.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Croatian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'hu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>венг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hungarian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'huz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>гунзиб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hunzib</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'iir'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Aryan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'inc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>инд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Indic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'inc-x-mid'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ср.инд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle Indic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'inc-x-nnew'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>северные новоиндийские диалекты</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>North New Indic dialects</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'inc-x-old'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.инд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Indic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ine'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>и.е.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Indo-European</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'inh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>инг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ingush</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ira'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>иран.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Iranian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ira-x-mid'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ср.иран.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle Iranian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'is'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>исл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Icelandic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'isk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. ишк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ishkashimi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'it'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ит.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Italian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ja'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>япон.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Japanese</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-clq'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (разг.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Georgian (colloquial)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Georgian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-guria'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (гур.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gurian Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-imer'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (имер.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Imeretian Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-ingiloy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (ингил.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ingiloy Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-khevsur'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (хевсур.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khevsur Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-lchkhm'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (лечхум.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lechkhumi Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-mokhev'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (мохев.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mokhevian Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-pshav'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (пшав.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pshavian Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ka-x-rachian'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>груз. (рачин.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Rachian Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kaa'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>каракалп.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kara-Kalpak</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kap'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>капуч.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bezhta</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kbd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>каб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kabardian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kbd-x-crc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>черк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Circassian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kbd-x-crc-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>черк. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Circassian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kbd-x-crc-west'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>черк. (зап.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Circassian (western)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kbd-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>каб. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kabardian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kca'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ханты</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khanty</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kdr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>караим.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Karaim</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kho'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сак.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Saka</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'khv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хварш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khwarshi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'khw'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ховар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khowar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'khw-x-chtr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>читр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khowar (Chitral)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kjh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хакас.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khakas</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kjh-sghy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хакас. (сагайск.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Saghay Khakas</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kjj'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хиналуг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khinalugh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>каз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kazakh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ko'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>корейское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Korean</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kpt'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>карат.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Karata</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'krc-x-balkar'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>балк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Balkar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'krc-x-karachay'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>карач.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Karachay</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'krl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>карел.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Karelian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kry'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>крыз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kryz</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kry-x-jek'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>джекск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Jek Kryts</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ku'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>курд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kurdish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kum'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кум.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kumyk</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>коми</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Komi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'kw'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>корн.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Cornish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ky'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кирг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kyrgyz</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'la'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лат.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Latin</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lbe'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лак.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lak</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ldd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лур.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Luri</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lez'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лезг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lezgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'liv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лив.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Livonian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lt'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лит.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lithuanian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lt-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лит. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Lithuanian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>латыш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Latvian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'lzz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>чан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Laz</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'man'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мандинго</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Manding</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mdf'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мордовский (мокша)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Moksha Mordvin</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mga'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ср.ирл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle Irish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mis-x-khuri'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хури</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khuri</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>монг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mongolian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mn-x-uriankh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>урянх.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Uriankhai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mnc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>манджурское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Manchu</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mnj'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. м.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Munji</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mns'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>манси</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mansi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'myv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мордовский (эрзя)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Erzya Mordvin</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'mzn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>маз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mazanderani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'nds'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>н.н.нем.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Low German</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ne'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>непал.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Nepali</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'nl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нидерл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Dutch</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'no'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>норв.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Norwegian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'no-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>норв. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Norwegian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'nog'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ног.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Nogai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'non'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.сев.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Norse</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'non-x-is'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.исл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Icelandic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ntz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>натанзи</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Natanzi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'nub'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нубийское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Nubian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'oc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>прованс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Occitan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ofs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.фриз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Frisian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'oge'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.груз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Georgian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ohu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ст.венг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Hungarian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'oos'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ст.ос.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Ossetic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'oru'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>орм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ormuri</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'orv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.русск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Russian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'os'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ос.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ossetic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'os-x-digor'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>д.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Digor</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'os-x-iron'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>и.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Iron</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'os-x-ksan'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ксан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ksan Ossetic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'os-x-south'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ю.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>South Ossetic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'osx'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.сакс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Saxon</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pa'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пенджаби</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Punjabi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pal'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пехл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Middle Persian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pal-x-pazend'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>паз.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pazend</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pal-x-turfan'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пехл. турф.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Turfan Pahlavi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'peo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.перс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Persian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pgd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кхарошти</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gandhari</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пали</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pali</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пол.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Polish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'pra'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пракрит.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Prakrit</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'prc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Parachi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'prg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.прусс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Prussian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'prs'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тадж. (кабули)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Dari (Kabul)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ps'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>афг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pashto</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'psh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пашан</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pashai (?)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'qwm'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>куман.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Cuman</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ro'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>рум.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Romanian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'rom'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>цыг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Romani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-argot'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (арго)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (argot)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-arkh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (арх.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (Arkhangelsk)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-novg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (новг.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (Novgorod)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-smlnsk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (смол.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (Smolensk)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-south'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (южн. диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (southern dialects)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ru-x-vldmr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>русск. (влад.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Russian (Vladimir)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'rut'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>рутул.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Rutul</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sa'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>скр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sanskrit</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sa-vaidika'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>вед.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Vedic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sah'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>якут.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Yakut</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sem'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>семит.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Semitic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sga'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.ирл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Irish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. ш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Shughni</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgh-x-bartang'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. барт.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bartangi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgh-x-khufi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хуф.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khufi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgh-x-oroshori'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. ор.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Oroshori</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сангисарское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sangsari</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. сгл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sanglechi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sgy-x-zebak'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. зеб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Zebaki</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сербо-хорв.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Serbo-Croatian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>слов.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Slovenian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sla'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>слав.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Slavic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'smi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лопар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sami</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'smy'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>семнан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Semnani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sog'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>согд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sogdian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sog-x-budd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>согд. будд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Buddhist Sogdian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sog-x-chr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>согд. христ.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Christian Sogdian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sog-x-man'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>согд. ман.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Manichaean Sogdian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sog-x-mugh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>согд. (Муг)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sogdian (Mugh)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sqj'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>алб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Albanian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>серб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Serbian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'srh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. с.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sarikoli</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sty'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тобол.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tobolsk Tatar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sux'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>шумер.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sumerian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>швед.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Swedish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sv-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>швед. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Swedish (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'sva'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сван.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Svan</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'syd'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>самодийское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Samoyedic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'syd-x-south'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>южносамодийское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>South Samoyedic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'syr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сир.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Syriac</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tab'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>табас.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tabassaran</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тадж.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tajik</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tg-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тадж. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tajik (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tg-x-qrtg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тадж. (каратег.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tajik (Qarategin)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tg-x-vanj'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тадж. (вандж.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tajik (Vanj)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>туркм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Turkmen</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tkr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>цахур.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tsakhur</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tly'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тал.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Talyshi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тур.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Turkish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tr-x-anat'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>анат.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Anatolian Turkish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'trk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тюрк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Turkic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'trk-x-north'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сев. тюрк.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>North Turkic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tt'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>татар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tatar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tt-x-dial'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>татар. (диал.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tatar (dialectal)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'tt-x-kazan'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>казан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kazan Tatar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ttt'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>татск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tat (Muslim?)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'txb'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тохар. B</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tocharian B</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'txh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фрак.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Thracian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'uby'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>убых.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ubykh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'udi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>удин.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Udi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'udm'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>удм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Udmurt</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ug'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>уйгур.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Uyghur</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ug-x-kashgar'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кашг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kashgari Uyghur</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'uk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>укр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ukrainian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'uk-x-gal'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>укр. (галиц.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ukrainian (Galician)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'uk-x-west'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>укр. (зап.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Ukrainian (western)</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'uz'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>узб.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Uzbek</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'vep'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>вепс.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Veps</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'wbl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. в.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Wakhi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'wen'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>луж.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Sorbian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'wne'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ванеци</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Wanetsi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'wsv'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>вотапурско-катаркалайское</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Wotapuri-Katarqalai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-balochi'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>бел.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Balochi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-barakai'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>варакаи</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Barakai</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-iazyg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>языгский</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Iazygean</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-mordvin'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>морд.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mordvinic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-nuristan'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кафир.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Nuristani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-oldirn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.иран.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Old Iranian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-oldsl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>др.слав.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Proto-Slavic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-pamir'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pamir</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-pamir-n'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. н.??</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Pamir</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-rushani'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. руш.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Rushani</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-tchr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тохар.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tocharian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'x-vaynakh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>вейнах.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Vaynakh</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xal'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>калм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Kalmyk</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xbc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кушан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bactrian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xbo'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>булг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Bulgar</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xcl'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>арм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Armenian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xhu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хурр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Hurrian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xln'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>алан.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Alanic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xlu'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>лув.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Luwian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xme'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мид.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Median</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xmf'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>мегр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Mingerlian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xmn'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пехл. (маних.)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Manichaean Middle Persian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xpg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>фриг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Phrygian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xpr'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>парф.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Parthian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xsc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>скиф.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Scythian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xtg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>галл.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Gaulish</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xto'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>тохар. A</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tocharian A</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xtq'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>сак. (Тумшук)</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Tumshuqese</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'xum'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>умбр.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Umbrian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'yah'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. язг.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Yazgulyam</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'yai'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ягн.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Yaghnobi</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ydg'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>пам. и.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Yidgha</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'yrk'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>нен.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Nenets</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'ysc'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>ясск.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Jassic</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'zh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>кит.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Chinese</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'zkh'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>хорезм.</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Khwarezmian</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$lang-code = 'zza'">
                <xsl:choose>
                    <xsl:when test="$name-lang = 'ru'"><xsl:text>заза</xsl:text></xsl:when>
                    <xsl:when test="$name-lang = 'en'"><xsl:text>Zazaki</xsl:text></xsl:when>
                </xsl:choose>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
