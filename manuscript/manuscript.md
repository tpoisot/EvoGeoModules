---
title: Coevolutionar structure is observable in interactions, not in communities
author: Timothée Poisot \and Daniel B. Stouffer
date: Oct. 31, 2014
---

**Coevolutionary dynamics act on both species and their interactions to
drive the structure of ecological communities. It remains unclear, however,
how the structure of communities at larger spatial scales either influences
or is influenced by local coevolutionary processes, and how mechanisms acting
at different scales feedback into one another. The structure of ecological interactions determine how these feedbacks are distributed among species of a community. Here we show that, though species interactions
vary substantially over a continental gradient, the coevolutionary significance
of individual interactions is maintained across different scales. Notably,
this also occurs despite the fact that community variation at the local scale
tends to weaken or remove community-wide coevolutionary signal. When considered
in terms of the interplay between coevolutionary theory and community ecology,
our results demonstrate that individual interactions are locally relevant
whereas the emerging structure of these interactions across many species
only becomes relevant at regional scales.**

Ecological interactions exert selective pressures on the species involved;
for example, lodgepole pines and red crossbills phenologies respond
spatially to the presence of squirrels [@benk03a] and palm species undergo
changes in seed morphology in response to the extinction of bird dispersing
their seeds [@gale13]. Most of these interactions are long-standing from
a macroevolutionary point of view [@eklo11], explaining why the way that interactions
are distributed is so similar across communities, either at the large [@jord03]
or small [@stou07] scale. This suggests that large and small scale structure results from evolutionary dynamics of speces. Although the evolutionary dynamics of interacting
species pairs has been well described [@gand08], attempts to understand
how these cascade up to generate the tremendous diversity of both
species and interactions found within empirical communities have been
inconclusive [@hemb14].

Historically, coevolution in taxonomically diverse communities is quantified
as the matching between the phylogenies of two sets of interacting organisms
[@lege02]. This notion builds on the century-old idea that extant species
interact in a way similar to the way their ancestors did [@fahr13]. More
explicitly, it is thought that communities that assembled through coevolution should (i)
have similar phylogenetic trees and (ii) species at matching positions
in either trees should interact. It is not clear, however, how this idea
holds when confronted with dynamics occurring at smaller scales: indeed,
many ecological and evolutionary processes that occur locally are expected
to blur the phylogenetic signal [@pois15]. One possible reason is that interactions can display substantial turnover,
at ecologically relevant temporal and spatial scales [@pois12c]:
the same two species can interact in different ways under the effect of
local environmental contingencies, spatial mismatch in species phenologies,
variations in population abundances, and chance events [@pois14]. This suggests that the impact of deep evolutionary history on community structure can be lessened by the action of ecological mechanisms at the local scale.

<!--
TP: I don't think this ¶ is necessary in the final text, but let's keep it
to see the flow at the moment

DBS: I'm so glad you left this note as this was one of my comments. I agree that most of it shouldn't appear as a whole paragraph, but do think that each key idea must appear near the start of the corresponding paragraphs.
-->

In order to better understand the interplay between coevolutionary theory
and community ecology, we study data a dataset of rodent ectoparasites from
Western to Eastern Europe [@kras12b]. These data show high turnover of both
species and their interactions over time, and have well resolved phylogenetic
trees to support a fine analysis of coevolution.

$\dots$to test the following four hypotheses. First, local (observed)
networks do not show evidence of coevolution, whereas the continental-scale
(henceforth regional) system does. Second, the spatial variation of
species interactions is independent from the variation in phylogenetic
diversity. Third, interactions are distributed spatially in a way that is
independent from their evolutionary history. Finally, the contribution of
interactions to coevolution is similar at the local and regional scale.

If ecological mechanisms do reduce evolutionary signal, we expect to detect
coevolution at the continental scale, but not locally. In line with this
hypothesis, coevolution is strong at the continental level [@kras12a]
($p \leq 10^{-4}$) but most local networks show very little evidence of
phylogenetic congruence (Fig. 1). Out of 51 local networks, 35 show no signal
of coevolution, 11 show coevolution when using the regional interactions,
and 12 show coevolution using the local interactions (see *Supp.  Mat. 1*
for network-level significance values). This suggests that macro-evolutionary
processes such as co-diversification have consequences at the macro-ecological
level [@pric03], but may not in fact be detectable at fine spatial scales.

![(A) Conceptual representation of the sampling level. (B) Spatial distribution of the 51 sampled sites, with significance of the regional and local interaction networks color-coded.](../figures/figure1.pdf)

That there is no signal of coevolution implies that species at matching
positions in the tree do not necessarily interact, which can happen if
the variation of species interactions is not tied to the phylogenetic
relatedness of species across space. In this system, the phylogenetic
dissimilarity of both hosts and parasites increases with distance (Fig. 2A),
and we observe the same for the joint variation of species and interactions
(Fig. 2B). In contrast, when we control for the effect of species variation,
we find that the similarity of interactions is independent of both spatial
distance (Fig. 2C) and host or parasite phylogenetic dissimilarity
(Fig. 2D). Therefore, while evolutionary history is tightly linked to
species distribution---since communities close to each other tend to have
related hosts and parasites---these results show that it is also rather poor
predictor of the way in which these species ultimately interact.

![Relationships between spatial distance, phylogenetic dissimilarity, and the dissimilarity of interactions at the local and regional scales. (*temp.*)](../figures/figure4.pdf)

Interactions also ultimately differ in how frequently they vary when
the species involved are co-occurring [@pois13]. The literature on
host-parasite interactions usually assumes that some interactions
are more frequent because they reflect a significant past history of
coevolution [@comb01;@mora10]. Should this be the case, the correlation
between the probability of observing an interaction and the importance
of that interaction for coevolution at the continental scale should be
positive and significant. Surprisingly, we find that neither is true here
(Fig. 3). Interactions that are important to coevolution are not more
conserved.

![Lack of relationship between the probability of observing an interaction, and its contribution to coevolution in the continental network. Each interaction is weighted by the number of times the two species involved have been observed together. (*temp.*)](../figures/figure3.pdf)

Nonetheless, interactions that persisted at the local scale should retain
their signal of contribution to coevolution, because they involve species at
matching positions in the phylogenetic trees. We find that interactions that
contribute strongly to coevolutionary signal at the continental scale *also*
contribute strongly at the local scale (Fig. 4). Remarkably, this result
implies that coevolution is still detectable in individual *interactions*
even though it does not leave its imprint on most local networks.

![Relationship between continental and regional contribution to coevolution (*temp.*).](../figures/figure2.pdf)

<!--Discussion 3-->

Overall, the results of our analyses demonstrate that our current understanding
of coevolution as the basis of multi-species interactions scales rather poorly
to ecological questions.  Although phylogenetic structure and interactions are
largely congruent at the continental scale, community structure is primarily
driven by ecological, and not evolutionary, constraints. This conclusion
is supported by our observations that (i) local networks show no signal
of coevolution and (ii) the strength of coevolution between two species
does not predict how frequently they interact. Yet, individual interactions
retained their coevolutionary signal whereas the community they are weaved
into did not. Above all else and contrary to the oft-repeated point that
coevolution should explain the local structure of interactions [@thom13],
our results suggest that local network structure is far more likely to affect
coevolution than the other way around.

# Methods

**Data -- ** We study data on observations of interactions between 121 species
of rodents and 205 species of parasitic fleas in 51 locations across Europe
[@kras12b] to build 51 species-species interaction networks. Interactions
were measured within a 50 km radius around each point reported in Fig. 1, by
combing rodents for fleas. This method gives high quality data, are it has a
very high power to detect even rare interactions. To account for differential
sampling effort, we converted all of the quantitative data in binary one,
so that our networks describe the presence and absence of interactions.
We also aggregated these 51 networks in order to describe the continental
"metanetwork" that therefore includes all potential interactions between
co-occurring species [@pois12c]. We define threes scales in the data. The
*continental* scale is the aggregated metanetwork, *i.e.* all species and
all their interactions. Within each site, the *regional* scale is the list of
observed species, and all their possible interactions. The regional networks
is a perfect subset of the metanetwork; the *local* scale is the interactions
that were actually observed in the field at a given site. Local and regional
scales have the same species, but local has only a subset (or at most an
exact match) of the interactions in the regional level.

**Community phylogenetics --** The phylogenetic trees for hosts and parasites,
published alongside the original network data, were rendered ultrametric. We
quantified the degree of matching between host and parasite phylogenies given
knowledge of species interactions using the *PACO* method [@balb13]. *PACO*
provides measures of both the network-level congruence (*i.e.*, is the network
coevolved?) and the interaction-level signal (*i.e.*, what is the contribution
of each interaction to the overall coevolutionary signal?). For each local
network, we measure the strength of coevolution using (i) local observations
only and (ii) all possible interactions between locally co-occurring species
(based on the interactions found in the regional metanetwork). Testing
both of these networks allows us to separate the effect of species sorting
(regional) and interaction sorting (local). We quantified the phylogenetic
dissimilarity between two sites for hosts and parasites using PCD [@ives10]:
this measure accounts for the dissimilarity of species, corrected for the
phylogenetic distance between all species in the dataset.

**Interactions dissimilarity --** We used the network $\beta$-diversity
approach [@pois12c] to measure the dissimilarity of interactions across
sites. We specifically measured the dissimilarity of the *regional* and
*local* networks. We built a probabilistic model of the occurrence of each
interaction based on the following rule: the probability that an interaction
is observed is the number of times it is observed across all sites, divided
by the number of sites in which the two species co-occur.

**Acknowledgments.** We acknowledge that this paper is awesome.

# References



