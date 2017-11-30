# lineWidth = 40
# puts'Table of Contents'.center lineWidth
# puts ('Chapter 1:'.ljust lineWidth) + ('Numbers'.center lineWidth) + ('page 1'.rjust lineWidth)
# puts ('Chapter 2:'.ljust lineWidth) + ('Letters'.center lineWidth) + ('page 72'.rjust lineWidth)
# puts ('Chapter 3:'.ljust lineWidth) + ('Variables'.center lineWidth) + ('page 118'.rjust lineWidth)



toc = [['Chapter 1:', 'Chapter 2:', 'Chapter 3:'], ['Numbers', 'Letters', 'Varaiables'], ['1', '72', '118']]

lineWidth = 20

puts (toc[0][0].ljust lineWidth) + (toc[1][0].center lineWidth) + (toc[2][0].rjust lineWidth)
puts (toc[0][1].ljust lineWidth) + (toc[1][1].center lineWidth) + (toc[2][1].rjust lineWidth)
puts (toc[0][2].ljust lineWidth) + (toc[1][2].center lineWidth) + (toc[2][2].rjust lineWidth)
