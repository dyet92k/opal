opal_filter "taint" do
  fails "Range#to_s ignores own tainted status"
  fails "Range#inspect ignores own tainted status"

  fails "String#% doesn't taint the result for %e when argument is tainted"
  fails "String#% doesn't taint the result for %E when argument is tainted"
  fails "String#% doesn't taint the result for %f when argument is tainted"
  fails "String#% doesn't taint the result for %g when argument is tainted"
  fails "String#% doesn't taint the result for %G when argument is tainted"

  fails "StringScanner#pre_match taints the returned String if the input was tainted"
  fails "StringScanner#post_match taints the returned String if the input was tainted"
  fails "StringScanner#rest taints the returned String if the input was tainted"
end
