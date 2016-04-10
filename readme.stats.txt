
Randomized Experiments (vs. Observational Studies - analysis of correlations):

POPULATION - entire collection of cases to which we want to generalize (e.g. all children
in the US)

SAMPLE - a subset of the population (e.g. 4K children from VA, not very representative)


Parameter - a numerical measure that describes a characteristic of a POPULATION

Statistic - a numerical measure that describes a characteristic of a SAMPLE


Descriptive statistics - procedures used to summarize, organize and simplify data

Inferential statistics - techniques that allow for generalizations about POPULATION
parameters based on SAMPLE statistics

Independent variable - manipulated by the experimenter (e.g. polio vaccine or placebo),
observational studies don't manipulate these

Quasi-independent variable - no random assigment to conditions (e.g. concussed
footballers)

Dependent variable - represents the aspect of the world that the experimenter predicts
will be *affected* by the independent variable (e.g. polio diagnosis in an individual
child, rate of polio in a group of children).  Outcome measures.

Confound - e.g. non-control group person goes to lab but does no memory
training but becomes more comfortable and scores higher as a result of that
comfort

Causality - requires true independent variables, random & representative samples, no 
confounds.  Weaker causality for Observational Studies.

---

Descriptive (4 moments of the mean):

Mean, median, mode (peak of the histogram) are measures of location or central tendency

Stdev, IQR, variance are measures of spread / variability (how wide is the histogram)

Skewness & Kurtosis are measurements of non-normal distribution histogram shape.


Normal distribution - +/-1 SD 68%  +/-2 SD 95%  +/-3 SD 99%

Skewness & kurtosis the closer to 0 the closer your data is to the normal distribution.
>+1.5 or <-1.5 indicates a non-normal distribution

Left/negative skew means left side has a long tail (lump on right side, data
trailing away on left side), therefore mean < median.  The mean is on the
left side of the peak.
E.g.:
Income distribution is right/positive skewed in histogram: /^^^\...
SAT scores at Princeton are left/negatively skewed in histogram: .../^^^\

Closer mean is to median, closer your data is to normal distribution

Median is preferred when there are extreme (or skewed) scores in the distribution

Kurtosis measures the peaked-ness of the data.  Light tailed has little or no
data in the tails, the peak is flatter than normal.

---

Correlation e.g. r=.22 indicates slightly positive correlation SAT to Working Memory

At r=1.0 everyone in the sample is on the regression line

Pearson r is degree to which X&Y vary TOGETHER relative to the degree to which they vary
INDEPENDENTLY:
r = (covariance of X&Y) / (variance of X&Y)

Covariance (of X&Y) using raw scores:
                             "cross products"
     _________________________________________________________________________
SP = (the deviation scores on X) are multiplied by (the deviation scores on Y), then summed (i.e. SS XY)


Variance (of X&Y):
sqrt(SS of X multiplied by SS of Y)

r = SP of XY / VAR of XY

Can instead use Z scores to get covariance:
r = (Sum of ZsubX and ZsubY) / N

Variance = MS = SS/N
Covariance = SP/N  (correlation becomes standardized: -1 thru 1)

---

categorical - nominal - drink type
categorical - ordinal - cup size sm med lg
quantitative - interval - # of children
quantitative - ratio - heart rate

---

H0 = null hypothesis (r=0)
HA = alternative hypothesis (r>0)

Statistically significant is when p value < alpha (alpha is usually 0.05) - ok to reject H0
Statistically highly significant is p < 0.001 (less than one in a thousand chance of being wrong)

p is probability of obtaining these data (getting this outcome) given H0

Type I error is the false rejection of the null hypothesis - a false alarm
Type II error is the false acceptance of the null hypothesis - a miss
As an aid memoir: think that our cynical society rejects before it accepts.

---

The IQR (interquartile range) is the difference between the 25th and 75th
percentiles. It is not as likely to be affected by outliers and therefore is
more robust than the overall range.

50th percentile is the median

---

3 SD 99.7% (only 3 out of 1000 will fall outside 3 SD on either side of the center line)
2 SD 95.4%
1 SD 68.3%

---

Variance - the average squared difference of observations from the mean

Standard deviation (how tightly or loosely the values are grouped around the
mean, a measure of consistency):
SD = sqrt(SS/N-1)

---

Z Score - a standardized unit of measurement - negative is below mean, positive is above, Z=0
is when you are on the center line:
Z = (raw sample value - sample mean)/standard deviation
Z = (X-mu)/SD
Use tables or R to get Percentile Rank of Z
Probability is 1 minus Percentile Rank

---

Standard deviation example (see also readme.R.txt):

X:
455.05 + 459.3 + 462.04 + 448.26
=1824.65
./4
456.16  # mean "Mu"

(X-Mu):
455.05-456.16 = -1.11  # deviation score  ( -1.11 + 3.14 + 5.88 + -7.9 = 0 )
459.3-456.16 = 3.14    # deviation score
462.04-456.16 = 5.88   # deviation score
448.26-456.16 = -7.90  # deviation score

(X-Mu)^2:
-1.11^2 = 1.2321   # deviation score squared
 3.14^2 = 9.8596   # deviation score squared
 5.88^2 = 34.5744  # deviation score squared
-7.90^2 = 62.410   # deviation score squared

1.2321+9.8596+34.5744+62.4100
108.0761  # SS "sums of squares"

108.0761/(4-1)
36.025  # Variance or SD^2 or mean of SS, aka MS ("mean squares")

sqrt(36.025)
6.00208297176905077812  # SD
