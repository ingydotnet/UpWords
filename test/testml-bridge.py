from upwords import UpWords

from testml.bridge import TestMLBridge as Base

class TestMLBridge(Base):
  def up_words(self, string):
    return UpWords().translate(string)
