require "./toe.rb"
describe Board do
  describe "#initialize" do
    it "makes Board" do
      board = Board.new
      expect(board.board).to eql([["", "", ""],["", "", ""],["", "", ""]])
    end
  end
  describe "#get" do
    it "gets board" do 
      board = Board.new
      expect(board.get(0,0)).to eql("")
    end 
  end
  describe "#set" do
    it "sets board" do
      board = Board.new
      board.set(0,0,"k")
      expect(board.get(0,0)).to eql("k")
    end
  end
  describe "#check" do
    it "checks first row filled" do 
      board = Board.new
      board.board = ([["x", "x", "x"],["", "", ""],["", "", ""]])
      expect(board.check()).to eql(true)
    end
  end
  describe "#clean" do
    it "cleans board" do 
      board = Board.new
      board.set(0,0,"k")
      board.clean()
      expect(board.board).to eql([["", "", ""],["", "", ""],["", "", ""]])
    end
  end
end