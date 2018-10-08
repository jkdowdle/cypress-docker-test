describe('Test Two', () => {
  it('does not do much!', () => {
    cy.visit('index.html')
      .getByText(/LOL/)

  })
})
