# Sonic Pi tutorial from Harmon's CC class


# PLAYING NOTES
# runs 60th note on piano
#play 60
# notes have default release of 1

# plays note by letter name (C note in 3rd octave)
#play :C3
#sleep 1

# plays sharp
#play :Cs3
#sleep 1

# CHORDS
# combine 3+ notes to get a chord
#play :C
#play :E
#play :G
#sleep 1

# or write it like this
#play chord(:C3, :major)
#sleep 1
# types include :major, :minor, :sus2, :sus4

# appregio (playing notes of chord individually)
#play :C
#sleep 1
#play :E
#sleep 1
#play :G
#sleep 1

# or write like this
#play_pattern chord(:E3, :m7)
#sleep 1

#example of appreggio in music --> fairy fountain in Zelda

# ITERATION
#8.times do
#  play 60, release: 0.2
#  sleep 0.25
#end

# nested loop
#4.times do
#  sample :elec_snare
#  4.times do
#    sample :drum_tom_mid_soft
#    sleep 0.125
#  end
#end

# infinite loop
#loop do
#  sample :loop_amen
#  sleep sample_duration :loop_amen
#end

# multiple infinte loops at same time_warp
# do this using threads
#in_thread do
#  loop do
#    sample :drum_heavy_kick
#    sleep 1
#  end
#end

#in_thread do
#  loop do
#    use_synth :fm
#    play 40, release: 0.2
#    sleep 0.5
#  end
#end

#loop do
#  use_synth :zawa
#  play 52, release: 2.5, phase: 2, amp: 0.5
#  sleep 2
#end

# end of threaded loops here

# live loops
# let you modify code as it is playing and press run again, sonic
# Pi will try to not miss a beat
#live_loop :repeat_that_chord do
#  play chord(:E, :major)
#  sleep 1
#end

# RANDOMNESS
# use choose command
#live_loop :random_chord_time do
#  play chord(:c2, :minor7).choose, release: 0.6
#  sleep 1
#end
# ^this code loops through and randomly chooses to play

# PRINTING
live_loop :print_it do
  my_note = chord(:c2, :minor7).choose
  puts "Available notes", chord(:c2, :minor7)
  puts "I chose", my_note
  play my_note, release: 0.6
  sleep 1
end




