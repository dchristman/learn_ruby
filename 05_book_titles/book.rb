class Book
  ##List of words to ignore: articles, conjunctions, and prepositions(taken from a list online)
  IGNORES = %w( the of a an and or nor
aboard
about
above
across
after
against
along
amid
among
anti
around
as
at
before
behind
below
beneath
beside
besides
between
beyond
but
by
concerning
considering
despite
down
during
except
excepting
excluding
following
for
from
in
inside
into
like
minus
near
of
off
on
onto
opposite
outside
over
past
per
plus
regarding
round
save
since
than
through
to
toward
towards
under
underneath
unlike
until
up
upon
versus
via
with
within
without)

  def initialize
    @title = ''
  end
  def title=(title)
    @title = titleize(title)
  end
  def title
    @title
  end

  def titleize msg
    msg = msg.capitalize
    msg = msg.split
    msg.map! do |toCapitalize|
      if (IGNORES.include?(toCapitalize) == false)
        toCapitalize.capitalize
      else
        toCapitalize
      end
    end
    msg.join (' ')
  end
end
