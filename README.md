# Intendierte Verhaltensänderung im Klimawandel

## Teammitglieder

-   Gianna Betz
-   Blerona Bytyqi
-   Kyra Heiden
-   Elena Hahn

# Forschungsfragen

Welche Einflussfaktoren hindern oder fördern Menschen, intendierte
Verhaltensänderungen bezüglich des Klimawandels in Handlungen
umzusetzen?

## Faktorenraum

Soziale Medien
![Faktorenraum](README_files/figure-markdown_strict/Faktorenraum.png)

## Operationalisierungen

**Demographische Daten**

-   Alter: Freitext
-   Geschlecht:m/w/d
-   Bildungsabschluss:Auswahlmöglichkeiten
-   Haushaltseinkommen:Auswahlmöglichkeiten
-   Arbeitstatus: Auswahlmöglichkeiten
-   Kinder im Haushalt: Auswahlmöglichkeiten (keine/ 1/ 2/ 3/ mehr)
-   Wohnort: Auswahlmöglichkeiten (Stadt/Land etc.)
-   Internaler/Externaler Kontrollfokus:

**Nutzerfaktoren**

-   Ernährungsform:Auswahlmöglichkeit (vegan/ vegetarisch/ alles/
    pescetarisch etc.)
-   Autobesitz: (ja/nein)
-   Auto Km: Freitext
-   Auto Jahr: Freitext
-   Auto Privat: ja/nein
-   Auto beruflich: ja/nein
-   Wissen Klimawandel: Likertskala
-   Vertrauen in Wissenschaft: Likertskala
-   Misstrauen in Wissenschaft: Likerstskala
-   Bedrohungsempfinden: Likertskala
-   Selbstwirksamkeit: Likertskala
-   Handlungswirksamkeit: Likertskala
-   Kostenerwartung:
-   moralische Normen:
-   soziale Normen:
-   Nutzung und Einfluss von Social Media: selbsterstellte
    Einfachauswahl / Matrix / Likertskala (4 Items)

**Big 5-Persönlichkeit**

-   Offenheit:
-   Gewissenhaftigkeit:
-   Extraversion:
-   Verträglichkeit:
-   Eurozentrismus:

Unser Text: Viele Menschen unterstützen zwar die Idee des Umweltschutzes
und haben die Absicht, nachhaltiger zu leben, aber ihre tatsächlichen
Handlungen entsprechen oft nicht diesen Absichten. Wenn wir die
Diskrepanz zwischen Absicht und Verhalten verstehen, können gezieltere
Informationskampagnen, Anreize und Bildungsprogramme entwickelt werden,
um die Umsetzung nachhaltiger Praktiken zu fördern. Es ermöglicht auch,
Hindernisse zu identifizieren, die Menschen davon abhalten, ihre
Absichten in die Tat umzusetzen, und gezielte Lösungen einzuführen, um
diese Barrieren zu überwinden. In Bezug auf den Klimawandel ist es
entscheidend, dass individuelle Absichten zur Reduzierung von
Treibhausgasemissionen in konkrete Maßnahmen umgesetzt werden. Nur so
können wir als Gesellschaft die notwendigen Veränderungen herbeiführen,
um den Klimawandel einzudämmen und nachhaltiger zu leben.

**Quelle:** Williams, M. N., & Jaftha, B. A. (2020). Perceptions of
powerlessness are negatively associated with taking action on climate
change: A preregistered replication. Ecopsychology, 12(4)

**3 Zusammenhangshypothesen**

-   Je höher das Bildungsniveau desto höher ist die Bereitschaft
    tierische Podukte zu vermeiden

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  data$ccrb1 and as.numeric(data$edu)
    ## t = 0.93313, df = 76, p-value = 0.3537
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.1189177  0.3213494
    ## sample estimates:
    ##       cor 
    ## 0.1064294

-   Je höher das Alter desto höher ist die Bereitschaft Wasser zu sparen

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  (data$ccbi5) and (data$age)
    ## t = 0.97911, df = 76, p-value = 0.3306
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.1137462  0.3260426
    ## sample estimates:
    ##       cor 
    ## 0.1116096

-   Es gibt einen Zusammenhang zwischen der Nutzungshäufigkeit sozialer
    Medien und der Bereitschaft das Verhalten zu ändern

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  data$Verhaltensaenderung and as.numeric(data$sm1_i, data$sm1_f, data$sm1_y, data$sm1_t, data$sm1_x, data$sm1_l, data$sm1_s)
    ## t = 0.55974, df = 98, p-value = 0.5769
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.1415353  0.2500971
    ## sample estimates:
    ##        cor 
    ## 0.05645217

**Zusammenhangshypothese lineare Regression**

-   Die Bereitschaft das Verhalten zu ändern ist abhängig von dem
    Misstrauen in die Wissenschaft und dem Bedrohungsempfinden

**3 Unterschiedshypothesen**

-   Menschen, die sich vegan ernähren sind eher dazu bereit ihr
    Verhalten zu ändern als Menschen die sich nicht vegan ernähren

<!-- -->

    ## 
    ##  Welch Two Sample t-test
    ## 
    ## data:  gruppe_vegan$Verhaltensaenderung and gruppe_nicht_vegan$Verhaltensaenderung
    ## t = 0.22598, df = 21.341, p-value = 0.8234
    ## alternative hypothesis: true difference in means is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.3781645  0.4704722
    ## sample estimates:
    ## mean of x mean of y 
    ##  3.692308  3.646154

-   Männer und Frauen unterscheiden sich bezüglich ihrer Bereitschaft
    das Verhalten zu ändern

-   Menschen die mehr über den Klimawandel wissen ändern eher ihr
    Verhalten als Menschen die weniger über den Klimawandel wissen

<!-- -->

    ## Feedback JRH: Code fehlt. Mediansplit mit cut() oder Zusammenhangshypothese.

**Unterschiedshypothese ANOVA**

-   Geschlecht (männlich / weiblich) und Bildung haben einen Einfluss
    auf das Bedrohungsempfinden und die Bereitschaft das Verhalten zu
    ändern  
-   H0 = Das Geschlecht und Bildung (zu definieren) haben keinen
    Einfluss auf das Bedrohungsempfinden und Verhaltensänderungen

**Absatz zur Poweranalyse**

-   Man braucht bei einer schwacher Korrelation(r=0.1) ca. 782
    Proband:innen um eine Power von 0.8 zu erhalten

-   Man braucht bei einer mittleren Korrelation(r=0.3) ca. 84
    Proband:innen um eine Power von 0.8 zu erhalten

-   Man braucht bei einer starken Korrelation(r=0.5) ca. 28
    Proband:innen um eine Power von 0.8 zu erhalten

-   Bei 140 Proband:innen muss der Korrelationseffekt = 0,23 sein damit
    der Effekt nicht übersehen werden kann

## R Markdown
