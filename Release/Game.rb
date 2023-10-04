RubyVM::InstructionSequence.load_from_binary(File.binread('Game.yarb')).eval
begin
  $GAME_LOOP.call
rescue Exception
  display_game_exception('An error occured during Game Loop.')
end
