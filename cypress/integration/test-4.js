describe('My first test', () => {
  it('does not do much!', () => {
    cy.visit('index.html')
      .getByText(/LOL/)

  })
})
