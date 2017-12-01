feature "outcome" do

  scenario "play again" do
    new_game_two_human
    two_humans_x_wins
    expect(page).to have_content "Play Again"
  end

  scenario "two humans, x wins" do
    new_game_two_human
    two_humans_x_wins
    expect(page).to have_content "X is the winner"
  end

  scenario "two humanx, o wins" do
    new_game_two_human
    two_humans_o_wins
    expect(page).to have_content "O is the winner"
  end

  scenario "two humans, tied game" do
    new_game_two_human
    two_humans_tied_game
    expect(page).to have_content "Tied Game"
  end

  scenario "two computers" do
    two_computers
    expect(page).not_to have_content "O is the winner"
  end
end
