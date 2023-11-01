
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ukbjobs - Information on Occupation in UKB <img src="man/figures/logo.png" align="right" height="114" />

Occupation plays a pivotal role in an individual’s social and economic
life, and is often one of the first topics of conversation when meeting
someone new. Knowing a person’s job can provide valuable insights into
their technical skills, economic prospects, general social standing, and
how they spend much of their time (Hauser and Warren 1997). Occupation
is a long-term, stable indicator of an individual’s circumstances,
including income, wealth, and consumption (p. 60ff, Lambert and
Griffiths 2018).

Occupation is strongly linked to wellbeing: Workers who occupy lower
positions on the occupational ladder tend to report worse health, have a
higher probability of disability, and die at an earlier age than workers
who occupy higher positions on the occupational ladder (Ravesteijn,
Kippersluis, and Doorslaer 2013). Furthermore, late-career exposure to
high physical strain and low job control has been found to be comparable
to the average health decline that occurs as a result of ageing
(Ravesteijn, Kippersluis, and Doorslaer 2018). Job satisfaction is also
an important factor that plays a role in influencing the health of
workers (Faragher, Cass, and Cooper 2013).

The UK Biobank (UKB, Sudlow et al. 2015) is a large-scale biomedical
research project consisting of a national database containing health
information on over 500,000 UK inhabitants. The aim of the project is to
improve the health of future generations by providing researchers with a
valuable resource for studying the causes of disease.

Information on UKB respondents’ was measured using the SOC2000 structure
(Elias et al. 2000) and occupation is available for the majority of
cases.

In this package, we provide a collection of helpful external information
on occupations that can be merged to UKB via SOC2000. This includes the
three occupational status metrics CAMSIS, SIOPS and ISEI, as well as a
mapping of SOC2000 to the international ISCO-88 occupational
classification. Furthermore we make information on occupational means
the big 5 personality dimensions, risk taking, mental health,
gratification delay and self efficacy based on estimates by Wolfram
(2023) available.

## Installation

You can install the development version of ukbjobs from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("tobiaswolfram/ukbjobs")
```

## Literature

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-elias2000revision" class="csl-entry">

Elias, Peter, Abigail McKnight, Rhys Davies, and Graham Kinshott. 2000.
“The Revision of the Standard Occupational Classification from Its 1990
Version to SOC2000.” *Labour Market Trends* 108: 563–72.

</div>

<div id="ref-faragher2013relationship" class="csl-entry">

Faragher, E Brian, Monica Cass, and Cary L Cooper. 2013. “The
Relationship Between Job Satisfaction and Health: A Meta-Analysis.”
*From Stress to Wellbeing Volume 1*, 254–71.
<https://doi.org/10.1057/9781137310651_12>.

</div>

<div id="ref-hauser1997socioeconomic" class="csl-entry">

Hauser, Robert Mason, and John Robert Warren. 1997. “Socioeconomic
Indexes for Occupations: A Review, Update, and Critique.” *Sociological
Methodology* 27 (1): 177–298.
<https://doi.org/10.1111/1467-9531.271028>.

</div>

<div id="ref-lambert2018social" class="csl-entry">

Lambert, Paul, and Dave Griffiths. 2018. *Social Inequalities and
Occupational Stratification: Methods and Concepts in the Analysis of
Social Distance*. London: Palgrave Macmillan.

</div>

<div id="ref-ravesteijn2013contribution" class="csl-entry">

Ravesteijn, Bastian, Hans van Kippersluis, and Eddy van Doorslaer. 2013.
“The Contribution of Occupation to Health Inequality.” In *Health and
Inequality*. Emerald Group Publishing Limited.

</div>

<div id="ref-ravesteijn2018wear" class="csl-entry">

———. 2018. “The Wear and Tear on Health: What Is the Role of
Occupation?” *Health Economics* 27 (2): e69–86.
<https://doi.org/10.1002/hec.3563>.

</div>

<div id="ref-sudlow2015uk" class="csl-entry">

Sudlow, Cathie, John Gallacher, Naomi Allen, Valerie Beral, Paul Burton,
John Danesh, Paul Downey, et al. 2015. “UK Biobank: An Open Access
Resource for Identifying the Causes of a Wide Range of Complex Diseases
of Middle and Old Age.” *PLoS Medicine* 12 (3): e1001779.
<https://doi.org/10.1371/journal.pmed.1001779>.

</div>

<div id="ref-wolfram2023not" class="csl-entry">

Wolfram, Tobias. 2023. “(Not Just) Intelligence Stratifies the
Occupational Hierarchy: Ranking 360 Professions by IQ and Non-Cognitive
Traits.” *Intelligence* 98: 101755.
<https://doi.org/10.1016/j.intell.2023.101755>.

</div>

</div>
