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

**Deskriptive Statistik**

    psych::describe(df[c("age", "gender", "edu", "wissen", "NHSM", "Verhaltensaenderung", "Vertrauen_Wissenschaft", "Sorgen_Klimawandel", "Klimaschutz")])

    ##                        vars   n  mean    sd median trimmed   mad   min   max
    ## age                       1 100 46.84 29.63  46.00   46.49 39.29  0.00 98.00
    ## gender*                   2 100  2.11  0.76   2.00    2.14  1.48  1.00  3.00
    ## edu*                      3 100  4.51  2.22   5.00    4.51  2.97  1.00  8.00
    ## wissen                    4 100  9.27  5.23  11.00    9.75  2.97  0.00 17.00
    ## NHSM                      5 100 21.03  3.48  21.00   20.99  2.97 13.00 30.00
    ## Verhaltensaenderung       6 100  3.66  0.71   3.67    3.67  0.49  1.67  5.50
    ## Vertrauen_Wissenschaft    7 100  3.48  0.55   3.44    3.49  0.33  1.89  5.22
    ## Sorgen_Klimawandel        8 100  3.51  0.61   3.58    3.50  0.37  1.83  5.33
    ## Klimaschutz               9 100  3.40  0.45   3.33    3.39  0.31  2.33  4.67
    ##                        range  skew kurtosis   se
    ## age                    98.00  0.05    -1.18 2.96
    ## gender*                 2.00 -0.18    -1.29 0.08
    ## edu*                    7.00  0.04    -1.14 0.22
    ## wissen                 17.00 -0.97    -0.60 0.52
    ## NHSM                   17.00  0.09    -0.20 0.35
    ## Verhaltensaenderung     3.83 -0.24     0.06 0.07
    ## Vertrauen_Wissenschaft  3.33 -0.09     0.92 0.06
    ## Sorgen_Klimawandel      3.50  0.16     0.53 0.06
    ## Klimaschutz             2.33  0.30     0.60 0.05

    ggplot(df) +
      aes(x = age) +
      geom_histogram(bins = 30L, fill = "#112446") +
      labs(
        x = " Alter",
        y = " Anzahl Proband*innen",
        title = "XY Stichprobe ",
        subtitle = "Histogramm Altersverteilung",
        caption = paste0("30 bins, N=",nrow(df))
      ) +
      theme_minimal()

![](README_files/figure-markdown_strict/unnamed-chunk-2-1.png)

**3 Zusammenhangshypothesen**

-   Je höher das Bildungsniveau desto höher ist die Bereitschaft
    tierische Podukte zu vermeiden

<!-- -->

    ## Warning in cor.test.default(df$ccbi1, as.numeric(df$edu), method =
    ## c("spearman")): Kann exakten p-Wert bei Bindungen nicht berechnen

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  df$ccbi1 and as.numeric(df$edu)
    ## S = 90165, p-value = 0.2209
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##        rho 
    ## -0.1401924

    ## Warning: Removed 22 rows containing missing values (`geom_point()`).

![](README_files/figure-markdown_strict/unnamed-chunk-3-1.png)

-   Je höher das Alter desto höher ist die Bereitschaft Wasser zu sparen

<!-- -->

    ## Warning in cor.test.default((df$ccbi5), (df$age), method = c("spearman")): Kann
    ## exakten p-Wert bei Bindungen nicht berechnen

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  (df$ccbi5) and (df$age)
    ## S = 69934, p-value = 0.3133
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.1156444

-   Es gibt einen Zusammenhang zwischen der Nutzungshäufigkeit sozialer
    Medien und der Bereitschaft das Verhalten zu ändern

<!-- -->

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  df$Verhaltensaenderung and df$NHSM
    ## t = 1.7954, df = 98, p-value = 0.07567
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.01861664  0.36217724
    ## sample estimates:
    ##      cor 
    ## 0.178454

**Zusammenhangshypothese lineare Regression**

-   Die Bereitschaft das Verhalten zu ändern ist abhängig von dem
    Misstrauen in die Wissenschaft und dem Bedrohungsempfinden

<!-- -->

    ## 
    ##  LINEAR REGRESSION
    ## 
    ##  Model Fit Measures                     
    ##  ────────────────────────────────────── 
    ##    Model    R             R²            
    ##  ────────────────────────────────────── 
    ##        1    0.03014442    9.086862e-4   
    ##        2    0.04021513    0.001617257   
    ##  ────────────────────────────────────── 
    ## 
    ## 
    ##  Model Comparisons                                                               
    ##  ─────────────────────────────────────────────────────────────────────────────── 
    ##    Model         Model    ΔR²            F             df1    df2    p           
    ##  ─────────────────────────────────────────────────────────────────────────────── 
    ##        1    -        2    7.085706e-4    0.06884269      1     97    0.7935858   
    ##  ─────────────────────────────────────────────────────────────────────────────── 
    ## 
    ## 
    ##  MODEL SPECIFIC RESULTS
    ## 
    ##  MODEL 1
    ## 
    ##  Model Coefficients - Verhaltensaenderung                                         
    ##  ──────────────────────────────────────────────────────────────────────────────── 
    ##    Predictor                 Estimate      SE           t            p            
    ##  ──────────────────────────────────────────────────────────────────────────────── 
    ##    Intercept                 3.52209232    0.4563466    7.7180209    < .0000001   
    ##    Vertrauen_Wissenschaft    0.03862147    0.1293634    0.2985502     0.7659154   
    ##  ──────────────────────────────────────────────────────────────────────────────── 
    ## 
    ## 
    ##  MODEL 2
    ## 
    ##  Model Coefficients - Verhaltensaenderung                                          
    ##  ───────────────────────────────────────────────────────────────────────────────── 
    ##    Predictor                 Estimate       SE           t             p           
    ##  ───────────────────────────────────────────────────────────────────────────────── 
    ##    Intercept                  3.63778648    0.6361452     5.7184845    0.0000001   
    ##    Vertrauen_Wissenschaft     0.03656898    0.1302175     0.2808299    0.7794390   
    ##    Sorgen_Klimawandel        -0.03095315    0.1179712    -0.2623789    0.7935858   
    ##  ─────────────────────────────────────────────────────────────────────────────────

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

<!-- -->

    ## 
    ##  Welch Two Sample t-test
    ## 
    ## data:  gruppe_frauen$Verhaltensaenderung and gruppe_maenner$Verhaltensaenderung
    ## t = -1.4104, df = 73.483, p-value = 0.1626
    ## alternative hypothesis: true difference in means is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.55096964  0.09429136
    ## sample estimates:
    ## mean of x mean of y 
    ##  3.495238  3.723577

-   Menschen die mehr über den Klimawandel wissen ändern eher ihr
    Verhalten als Menschen die weniger über den Klimawandel wissen

<!-- -->

    gruppe_wissend <- df[df$wissen>= 12,]
    gruppe_unwissend <- df[df$wissen< 12,]
    t.test(gruppe_wissend$Verhaltensaenderung, gruppe_unwissend$Verhaltensaenderung)

    ## 
    ##  Welch Two Sample t-test
    ## 
    ## data:  gruppe_wissend$Verhaltensaenderung and gruppe_unwissend$Verhaltensaenderung
    ## t = -2.2013, df = 93.576, p-value = 0.03017
    ## alternative hypothesis: true difference in means is not equal to 0
    ## 95 percent confidence interval:
    ##  -0.58574764 -0.03017116
    ## sample estimates:
    ## mean of x mean of y 
    ##  3.496528  3.804487

**Unterschiedshypothese MANOVA**

-   Geschlecht (männlich / weiblich) und Bildung haben einen Einfluss
    auf das Bedrohungsempfinden und die Bereitschaft das Verhalten zu
    ändern

<!-- -->

    jmv::mancova(df, deps = c("Sorgen_Klimawandel", "Verhaltensaenderung"), factors = c("gender", "edu"))

    ## 
    ##  MANCOVA
    ## 
    ##  Multivariate Tests                                                                         
    ##  ────────────────────────────────────────────────────────────────────────────────────────── 
    ##                                        value         F            df1    df2    p           
    ##  ────────────────────────────────────────────────────────────────────────────────────────── 
    ##    gender        Pillai's Trace        0.05211317    1.0166404      4    152    0.4007036   
    ##                  Wilks' Lambda          0.9478987    1.0168088      4    150    0.4006629   
    ##                  Hotelling's Trace     0.05495247    1.0166207      4    148    0.4008107   
    ##                  Roy's Largest Root    0.05472315     2.079480      2     76    0.1320498   
    ##                                                                                             
    ##    edu           Pillai's Trace        0.22191411    1.3550263     14    152    0.1820610   
    ##                  Wilks' Lambda          0.7884725    1.3518984     14    150    0.1839401   
    ##                  Hotelling's Trace     0.25510196    1.3483960     14    148    0.1860392   
    ##                  Roy's Largest Root    0.18319418     1.988965      7     76    0.0674933   
    ##                                                                                             
    ##    gender:edu    Pillai's Trace        0.22093314    0.6741463     28    152    0.8893828   
    ##                  Wilks' Lambda          0.7890567    0.6737155     28    150    0.8896023   
    ##                  Hotelling's Trace     0.25467565    0.6730714     28    148    0.8900033   
    ##                  Roy's Largest Root    0.18695722     1.014911     14     76    0.4480136   
    ##  ────────────────────────────────────────────────────────────────────────────────────────── 
    ## 
    ## 
    ##  Univariate Tests                                                                                       
    ##  ────────────────────────────────────────────────────────────────────────────────────────────────────── 
    ##                  Dependent Variable     Sum of Squares    df    Mean Square    F            p           
    ##  ────────────────────────────────────────────────────────────────────────────────────────────────────── 
    ##    gender        Sorgen_Klimawandel          0.4358323     2      0.2179162    0.5674042    0.5693786   
    ##                  Verhaltensaenderung         1.4476591     2      0.7238295    1.4371775    0.2439806   
    ##    edu           Sorgen_Klimawandel          5.2291352     7      0.7470193    1.9450685    0.0739123   
    ##                  Verhaltensaenderung         2.9858763     7      0.4265538    0.8469308    0.5522432   
    ##    gender:edu    Sorgen_Klimawandel          2.0449510    14      0.1460679    0.3803277    0.9767162   
    ##                  Verhaltensaenderung         7.0015484    14      0.5001106    0.9929793    0.4689418   
    ##    Residuals     Sorgen_Klimawandel         29.1884149    76      0.3840581                             
    ##                  Verhaltensaenderung        38.2771384    76      0.5036466                             
    ##  ──────────────────────────────────────────────────────────────────────────────────────────────────────

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
