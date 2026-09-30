PROJECT DESK v0.13.3, a standalone site
=======================================

The folder is the whole site, and index.html is its home. Each model has
three pages:

    real-option-model.html   Real option value: the model
    real-option.html         Real option value: the page that takes a reading
    real-option-guide.html   Real option value: user guide

    fixed-bid-model.html     Bid price: the model
    fixed-bid.html           Bid price: the page that takes a reading
    fixed-bid-guide.html     Bid price: user guide

The model pages say what each model is for and follow the book's worked
example through the four phases of the lifecycle: Chapter 5's RSonic Terra
System for Real option value, Chapter 6's QNAV bid for Bid price. At each
phase they name the decision, what the book does, and what to type on the page.

Every page carries the same navigation: Home, Real option value and Bid
price across the top. A model's three pages are one set: the model's name
heads each, with tabs under it, About the model, Run the model and User guide. Every link stays in
this folder except murraycantor.com in the footer. No page makes a network
request of any kind, so the site works opened from a folder, served locally,
or uploaded anywhere as it is.

The two pages that take a reading show this version at the left of the
toolbar. If what you see does not say v0.13.3, the browser is serving a cached
copy: reload with Shift held down (Cmd-Shift-R on a Mac).

site.css is the stylesheet of murraycantor.com, copied in, so the site keeps
that look. If you restyle, copy the new site.css in here.

review-locally.command, review-locally.bat and this README are for your
machine. Nothing links to them, so leave them out of an upload.


To review it locally
--------------------
Open index.html straight from this folder, by double-clicking it or opening
it in Safari, and click through: nothing needs a server. If you would rather
see it served, double-click review-locally.command (review-locally.bat on
Windows), or in a terminal in this folder run

    python3 -m http.server

and open http://localhost:8000/. Ctrl-C in the terminal stops it.



What the two pages are
----------------------
A project is a parameter sheet, not a plan. You fill it in and take a reading.

  real-option.html   The delivery date is yours to choose and value decays
                     with it. The reading is the NPV at a stated confidence,
                     with the return on the money still to spend beside it,
                     and the value against delivery delay.

  fixed-bid.html     The client sets the date and the payment collapses at it,
                     so the engagement is a wager. The reading is a bid price,
                     by both Appendix 8 routes, or a refusal to bid.

Each page keeps its own projects and loads its own sample, with the figures
exactly as printed:

  QNAV EDL          On fixed-bid.html. Chapter 6 Table 2. Ready. It opens on a bid of
                    $4.174B for a required return of 1.00 at 80% return
                    confidence, with a quick estimate of $4.358B. Set the
                    deadline to 52, leave the drop-dead period blank and the
                    share paid if late at 0, and the bid rises to $11.125B,
                    because delivery by the deadline falls to a 37.3% chance
                    and a late delivery pays nothing.

  RSonic Terra      On real-option.html. Chapter 5 Table 1. It opens reading:
                    every Table 1 row is in the sheet as printed, and the four
                    choices the table does not state are preset to what your
                    script reads - market in dollars, penetration a share of
                    revenue, decay to zero at sales-life end, operations on
                    units sold in the period. It reads $19.5M at 85% confidence
                    with a to-go ROI of 3.49, against the chapter's about
                    $19.2M and about 3.4; over eight seeds your own package
                    puts it at $18.3M to $20.9M and 3.41 to 3.86.

The test plan that came with this folder walks both pages, step by step, with
the figure to expect at each one.


What changed in v0.13.3
----------------------
the two buttons under the home page's opening paragraph are
  removed. Nothing else changes. Test plan r21.

What changed in v0.13.2
----------------------
index.html is a landing page. It says what the models are
  for, why there are two (how a project's value responds to its delivery date),
  the three pages of each model, the lifecycle both follow, and where in the
  book the methods are. Every page says "the book" rather than "my book".
  No figure is computed differently. Test plan r20.

What changed in v0.13.1
----------------------
each model's three pages read as one set. The model's name
  heads all three, with tabs under it (About the model, Run the model, User
  guide) in the same place on every one, and the home page shows each model's
  three pages the same way. No figure is computed differently. Test plan r19.

What changed in v0.13.0
----------------------
a standalone site. A page describing each model,
  real-option-model.html and fixed-bid-model.html: what it is for, how it is
  read, and how it is used through Ideation, Chartering, Controlling and
  Release, following Chapter 5's RSonic and Chapter 6's QNAV, with what to type
  on the page at each phase. index.html is the site's home. Every page carries
  the same navigation (Home, Real option value, Bid price, and under a model
  its description, its page and its guide), and no link leaves the folder
  except murraycantor.com in the footer. The bid pages now cite the wager
  model to Chapter 2, where its equations are. No figure is computed
  differently. Test plan r18.


What changed in v0.12.0
-----------------------
A user guide for each model, real-option-guide.html and
  fixed-bid-guide.html, each opened by the User guide button on its model's
  toolbar and linked from index.html. Each walks the page from the book's
  sample: every tab, every box with the sample's value, every row of the
  panel, the reading, the figures, what the page refuses and why, worked
  changes with the figure each gives, and what to know before quoting a
  number. A reading is now always of the sheet on screen: opening Reading or
  Figures, or moving to another project, saves unsaved changes first. No
  figure is computed differently. Test plan r17.

What changed in v0.11.0
-----------------------
The Reading screen in plain words. The headline says what the
  figure means (85 times in 100 the value is at least this; the bid that gives an
  80% chance of the return), each figure beside it has a plain name, confidences
  and chances print as per cents, and no code or file name appears anywhere on
  the pages. Every row of the panel beside the sheet has a line saying what it
  is. No figure is computed differently. Test plan r16.

What changed in v0.10.2
-----------------------
The Sheet screen's right-hand panel, Derived, is now called
  What the sheet implies. Its figures sit in groups under plain names (margin on
  each unit sold; timing and volume; development cost and delay; when it is
  delivered; cost at completion), each with a line saying how it is worked out.
  The figures themselves are as in v0.10.1. Test plan r15.

What changed in v0.10.1
-----------------------
The Sheet tabs read plainly. Each estimate box has its name
  above it (low / expected / high, or mean / std dev, as your input sheets
  name them); the notes under each label say what the figure is and how to
  type it; the code names (x, n, a, con, confid) are gone. The bid page's
  boxes are called Deadline, Drop-dead period and Share paid if late. The
  sheet's Budget and Duration confidence boxes say that nothing reads them
  yet, and the price-operations exposure that it moves only the Derived
  card. No calculation changed; every reading is as in v0.10.0. Test plan r14.

What changed in v0.10.0
-----------------------
The bid page's calculation is rebuilt as a port of your qnav-fixed-bid-v1.8.0
package (model.py FP, surface.py RoiSurface), function for function, the sheet
feeding it directly. The cost to complete is a total over the due periods,
spent as a velocity for as long as the work actually runs and dropped past the
drop-dead date; the value of the engagement is the blend of the three regions;
the return resamples value and cost apart; the bid is solved backwards on a
surface of 40,000 draws. Every figure moved: QNAV reads $4.175B at a return of
1.0 with 80% confidence, was $4.587B; the closed form $4.358B, was $4.622B.
Two boxes for a job under way, Cost to date and Contracted payment; with a
payment the reading is the return on what is left, as run_roi.py prints it.
The cost–duration exposure box is gone: your model couples the two by
construction. real-option.html is unchanged but for the version.

What changed in v0.9.1
----------------------
The Reading screen carries the plots. Under the reading, its chart and its
controls, each page now draws the figures its Python package draws at the end
of a run: the seven of real-option.html (units a month over the sales life,
revenue, gross margin, the cost of supporting what is sold, development cost,
net present value with the option value marked, and the return on the
development spend) and the five of fixed-bid.html (time to complete, cost at
completion, expected value and return at the bid, and the bid for a given
return). They are drawn at the reading's own controls, so moving a slider
redraws them with the reading above them, and each still saves as
<project>_<Figure>.png. The Figures tab stays and shows the same set on its
own. No figure moved: the calculation is v0.9.0's, unchanged. Test plan r12.


What changed in v0.9.0
----------------------
Your report on v0.8.2, opened on your own stored project: the discount rate you
had typed as five per cent read as 60, and the support share you had typed as
ten per cent read as a hundredth of a per cent; then "I think the calculation
code should be rebuilt". Both defects were reproduced before anything was
changed.

The discount rate. v0.7.3's box took a rate per month as a fraction, 0 to
0.05, so your five per cent was stored as 0.05. v0.7.4 changed the box to per
cent per year and converted every stored entry on load, times 1200, which
turned the stored 0.05 into 60 and refused it as outside 0 to 50. The
conversion is gone. A stored entry is never rescaled on load again: what you
typed is what the box shows. The 60 an earlier version wrote into a stored
project stays in the box and is refused with the explanation, and typing 5
clears it.

The support share. The box is in per cent, so a fraction typed into it, .1
for ten per cent, read as a tenth of one per cent. Every box in per cent now
takes 85 or 85% for the same figure and refuses a fraction with the fix named:
reads "0.1", a fraction; the box takes per cent: type 10 or 10%.

The calculation is rebuilt as a port of your own package,
rsonic-real-option-v1.7.0, function for function, and the sheet feeds it
directly: Distributions.py (Triangular, Normal, Lognormal, Uniform and
Empirical, the last with numpy's histogram bins and scipy's interpolation as
your class has them), Case, Economics with npvPDF and ROI, and curve.py. Each
class was run beside your Python on identical inputs and agrees to floating
point. What the page keeps where your package leaves a choice: durations in
weeks at 4.34524 weeks to the month, the discount rate as an Appendix 3
extension that does nothing at 0, which is Table 1's figure and your
package's, the four preset choices on the sample, and the units carrying the
operations cost drawn apart from the units carrying the margin, as your npvPDF
draws them. Each field's stream of draws is now its own generator, seeded from
the project's seed and the field's name, rather than a different starting
point on one shared cycle.

The box rule, on every box of both pages. A box takes the unit printed beside
it, stores exactly what you typed, and never rescales a stored entry on load.
Per cent boxes (the three confidences, the penetration, the support share, the
discount rate; the two confidences on the bid page) take 85 or 85%. A money box
takes $4,750, 4,750 or 4750, and a K, M or B suffix, so Table 1's $200M is
200000000. A per cent sign in a money box is refused, as is a suffix in a per
cent box. A project saved by an earlier version is read in these terms and
never converted: an entry the page cannot read, a per-month rate from v0.7.3
or a confidence stored as a fraction by v0.8.2 and before, leaves its box
blank, and the sheet and the Derived card say what was stored and what to
type. Everything else you typed is left exactly as it was.

The figures moved, because the arithmetic is now your package's rather than a
model checked against it. Table 1 reads $19.5M and a to-go ROI of 3.49 at 85%
confidence, was $20.2M and 3.63; the mean NPV $57.4M, was $57.9M. Over eight
seeds of its own the page runs $19.5M to $20.4M and 3.52 to 3.69, inside your
package's $18.3M to $20.9M and 3.41 to 3.86 on the same sheet. The bid page
moved a little, since the cost at completion now goes through your Empirical
class: QNAV reads $4.587B by the search and $4.622B by the closed form, were
$4.591B and $4.626B. Every figure in test plan r11 was re-read off the page.


What changed in v0.8.2
----------------------
The units that carry the operations cost are drawn apart from the units that
carry the margin. Your npvPDF draws the profit, the operations cost and the
development cost as three unrelated distributions; the page had drawn a
month's operations cost off the same units draw as that month's margin, so
the two moved together and the NPV's spread came out 1 to 3% narrower than
yours on every sheet of your test suite, which put five of ten readings just
above the top of your eight seeds. Found by running the suite through the page
before you downloaded. Every real-option reading moved: Table 1 reads $20.2M
and a to-go ROI of 3.63 at 85% confidence, was $21.1M and 3.75; the mean NPV
did not move. The bid page's readings did not move. Test plan r10.


What changed in v0.8.1
----------------------
The RSonic sample opens reading. Table 1 does not state four of the sheet's
choices (market unit, penetration basis, revenue curve, operations cost basis)
and the page used to leave them blank and refuse to guess, so the sample opened
naming four fields with no value. It now carries the four your script reads:
dollars, a share of revenue, decay to zero at the end of the sales life, and
operations cost on the units sold in the period. The field notes still say
Table 1 does not state them. A copy of the sample saved by an earlier version
with them blank gets the same four when the page opens it; a choice you had
already made is kept, and a project of your own is not touched. A project
started from scratch still has them blank, since there the answer is yours.
No figure moved.


What changed in v0.8.0
----------------------
A Figures tab on each page draws the figures your Python packages draw for a
case, in the same greyscale and hatching, every title beginning with the
project's name. Seven on real-option.html: units a month over the sales life,
revenue, gross margin, the cost of supporting what is sold, development cost,
net present value with the option value marked and P(loses money) and P(makes
money) hatched, and the return on the development spend. Five on
fixed-bid.html: time to complete with P(on time), P(late) and P(past drop
dead), cost at completion against the planned cost, expected value and return
at the bid the reading gives, and the bid for a given return at 70, 80 and 90%
confidence. Each saves as <project>_<Figure>.png. An estimate the sheet states
in a known form is drawn from its formula, as your figures draw a three-point
estimate; a computed quantity is the smoothed density of its 20,000 draws.

The peak month is read the way Table 1 labels it and your Case reads it: "Peak
month from delivery", months after the expected delivery, so Table 1's 36 is
month 54 of the programme. Since v0.6.1 the page had counted it from the
start, eighteen months early on Table 1. Where the peak falls does not move
the mean NPV, but it moves the spread a little, so every real-option reading
moved: on Table 1 the option value at 85% confidence is $21.1M (was $20.2M)
and the return 3.75 (was 3.64). Eight seeds of your own package put Table 1 at
$18.3M to $20.9M and 3.41 to 3.86; the page's 4.34524 weeks to the month
delivers earlier than your 4, and at 4 it reads $20.4M and 3.63. Bid-page
readings did not move.


What changed in v0.7.4
----------------------
The discount rate is stated the way Appendix 3 quotes it: per cent per year,
with "% per year" beside the box, 0 to 50. Type 6 for six per cent; 6% reads
the same. Each month is discounted at a twelfth of it, Appendix 3 Equation 3
with n = 12. The box had wanted a rate per month as a fraction, 0 to 0.05, so
a rate typed the ordinary way was refused. Chapter 5 sets the rate aside, so
Table 1 has none and 0 is its figure; with 0 no figure moved.

A project saved by an earlier version is read in the new terms the first time
the page opens it: a rate the old box could use is converted (0.005 a month
becomes 6 a year), and one it refused is kept as typed, since it was never
used by a reading and was almost certainly a per-cent figure.

Two smaller things in the same spirit. Table 1 prints the addressable market
as $200, meaning $200 million: a figure may now be typed with a K, M or B
suffix, so 200M is 200000000. And a per-cent figure typed bare into a field
that runs to 1 -- 85 for the option confidence -- is still refused, but the
refusal now says what to type instead: 85% or 0.85.


What changed in v0.7.3
----------------------
When the sheet holds an entry the model cannot use, the sheet now says which
one without a trip to the Reading screen. The Derived card lists each entry
by name with the reason, and its row is outlined in red. That covers text
that is not a number, a figure outside its range, and an estimate that
contradicts itself, such as a three-point price whose expected figure is
above its worst case. v0.7.2 named these on the Reading screen only and
outlined only the text. No figure moved.


What changed in v0.7.2
----------------------
Five fixes, all on the pages. No figure moved: every reading in the test plan
is the same as v0.7.0's, to the digit.

1. A figure written the way the book prints it is read as that figure.
   $4,750, 4,750 and 4750 are one number, and so is $1,500,000,000. The boxes
   had parsed bare digits only, so typing $4,750 into the expected box of a
   three-point estimate threw the whole estimate away and the reading said
   Selling price had no value while three figures sat in it. A comma that is
   not a thousands comma (1,50 or 4.750,00) is refused, never guessed.

2. Something that is not a number is named, not dropped. It stays in the box
   as you typed it, its row is outlined in red, and the reading says, for
   example, Selling price, expected reads "tbd", which is not a number.

3. The reading tells an empty field from an unusable one. A figure outside its
   range, or an estimate that contradicts itself, used to be filed with the
   empty fields, so a discount rate of 0.08 in a field that runs to 0.05 read
   as "1 field(s) on the sheet have no value". A filled sheet with an entry it
   cannot use now says every field is filled in and lists the entry with its
   value.

4. A project started from scratch shows its defaults. The seven fields that
   carry one (the three confidences, the discount rate, the support share and
   window, and the price-operations exposure) came up as empty amber boxes the
   model was quietly filling in. They now show their figure, and the amber on
   the sheet comes from the same list the reading screen names, so the two
   always agree and a field that is not needed on your choices, such as the
   market's average price, is not flagged.

5. 85% is read as 0.85 in a field that runs to 1, as your own workbook reader
   takes it. In a field already stated in per cent, such as the support share,
   5% is 5.

Two labels also caught up with the v0.6.1 peak-month fix: "Sales life from
launch" is now Selling ends at month, and "Peak month from delivery" is now
Peak month, both counted from the programme's start.


What changed in v0.7.0
----------------------
A page per model, which is how the site is laid out. real-option.html and
fixed-bid.html each carry one value model and nothing of the other: their own
projects, their own sample, their own export file, and no case to pick when you
start a project. index.html names the two and links to each.

Anything you had saved in the single-page version is carried over on first
load: each page takes the projects of its own model out of the old store.
Exporting from a page now writes that model's projects only, and importing a
file of the other model's projects is refused rather than saved where the page
will not list it.

Nothing about the arithmetic changed in this version.


What changed in v0.6.1
----------------------
Every one of the 33 input sheets in rsonic-real-option-v1.7.0 and
qnav-fixed-bid-v1.8.0 was put through the page and compared with what your
packages print. Three differences turned up, all of them the page's:

1. The market's money was divided by the MEAN of the price distribution rather
   than by the price the sheet states. Your _units divides by the expected
   price and carries the uncertainty as a separate multiplier on the curve.
   Where the low and high price factors straddle 1 evenly the two agree, which
   is why Tables 1, 5 and 6 agreed all along; Table 3's 0.9 and 1.2 do not, and
   it read $72.8M against your $76.06M. It now reads $75.7M to $76.3M over
   eight seeds.
2. The peak month was read as a lag after delivery rather than as a month of
   the programme. Harmless over a 120-month sales life, since the peak month is
   inert there; with the 48-month sales life of your Short_sales_life sheet it
   put the peak past the end of trading and read $1.8M of mean NPV against your
   $15.8M. It now reads $15.6M to $15.8M.
3. The months between the early end of the duration estimate and its mean were
   not summed, though the curve is above zero in them.

Two smaller things went in with them. A figure typed past the end of its range
is refused by name rather than quietly pulled back inside it, so a confidence of
1 reads as a mistake. And an estimate with no spread is READ rather than
refused - your own package reads a degenerate triangular, and collapsing every
estimate on a sheet to one number is the cheapest check of the whole chain there
is: the value at any confidence has to come back as the one NPV there is.

Every one of your sixteen real-option cases now reads inside your own eight-seed
spread.


What changed in v0.6.0
----------------------
The business case was rebuilt against your own Ideation.py and curve.py. Four
corrections, one of which is the whole story:

1. The peak sales rate was a twelfth of what it should be. Your __units() is
   TAM x penetration / selling price, and that is already a monthly rate
   because the penetration is stated at the peak month. The page had been
   dividing by twelve. Table 1 is 18,032 units a month, not 1,513.
2. Each month of the sales life now draws its own penetration, price and
   operations cost, as your period loop does, instead of drawing them once for
   the whole life. A hundred months average out; drawn once they move together
   and pile weight into the left tail.
3. The sales curve is your quintic smoothstep, not a linear ramp.
4. Nothing is discounted unless you set a rate, and a delivery delay pushes the
   peak later against a fixed end of sales life rather than truncating it.

Together these brought Table 1 to about $20M at 85% with an ROI of about 3.6,
against the chapter's about $19.2M and about 3.4.

Two consequences for the sheet. The market unit choices are now "dollars" and
"units" rather than "... per year", because the figure is the market at the peak
month. And operations cost on the units sold in the period is the default, since
page 2 of the chapter says that is what it attaches to; the other bases remain
because the support model you asked for is one of them.

A project saved by an earlier version will ask for Market unit again, since the
old option names no longer exist.


What changed in v0.5.0
----------------------
The operations basis "installed base" is gone. It charged the per-unit figure
every month to every unit ever sold, with no retirement, which on this sales
curve is 69 times the per-unit figure - about $38,800 a unit against a $650
margin. That is a units error rather than a reading of Table 1, and it is what
made the installed-base reading -$4.16B. The bounded version of the same idea
is the support window of the share-of-price basis set wide.

"Penetration basis" now reaches the model. Until this version it was read and
never used, so "share of revenue" and "share of units" returned the same
number. Saying you hold a share of a market's revenue and saying you hold a
share of its units are different statements, and they part company as soon as
your price differs from the market's: holding revenue share, doubling your
price halves your volume; holding unit share, the volume does not move.

Converting between them needs the market's own average price, so there is a
new field, "Market average price". It is asked for only when the penetration
basis and the market unit are stated in different terms - a share of units in
a market quoted in dollars, or the reverse. In the other two combinations it
is not required and the sheet does not block on it.

A project saved by an earlier version with the basis set to "installed base"
now blocks, naming Operations cost basis, rather than silently becoming
something else.


Where your projects live
------------------------
In this browser, on this machine, and nowhere else. Nothing is uploaded and
there is no account. Export writes every project to a JSON file you keep;
Import reads one back. That file is the same shape the Python build reads, so
a project moves between the two without conversion.

Projects are kept per address, so anything you create while reviewing at
localhost:8000 stays there and will not appear on murraycantor.com. Export
first if you want to carry a project across.

Clearing your browser's site data for this page clears the projects, so export
anything you want to keep.

Changing a sample to see what happens is the point of having it.
"Restore the book sample", on each page's Projects screen, puts that page's
sample back at the values printed in the book.


The arithmetic
--------------
A port of your two Python packages, written against your Distributions.py.
Every distribution supplies cdf(x) and invCdf(p) and nothing else, and
percentile(p) takes p in [0, 1], as the module does. Each field draws from its
own keyed stream, so adding a field to a sheet leaves every other column
unchanged and two readings can be differenced rather than compared across
unrelated runs.

It was checked in node against the same figures the Python check run uses: the
closed-form P(on time) and EAC percentiles, both Appendix 8 routes, the
refusal, a penalty sweep, the unit-margin block and the four readings of
Chapter 5 Table 1. The two agree to Monte Carlo error rather than to the bit,
since they use different pseudo-random streams.

Appendix 8 §5 describes pricing against the return distribution as a search on
the bid. It does not have to be one: each region pays a fixed multiple of the
bid, so the return on draw i is bid*r - 1 with r = (region multiple)/cost, and
a positive bid cannot reorder the draws. The price is exactly

    bid = (ROI + 1) / Q,   Q = the (1 - confid) quantile of r

with Q at or below zero meaning no bid. That is why the confidence slider
reprices in about 6 milliseconds instead of running a bisection per point.
