class UpWords():
  def translate(self, string):
    def ucfirst(word):
      return word[0].upper() + word[1:]

    words = string.split()

    return ' '.join(
      map(
        ucfirst,
        [x.lower() for x in words]
      )
    )
