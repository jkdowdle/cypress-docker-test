describe('Test 3', () => {
  it('does not do much!', () => {
    cy.visit('index.html')
      .getByText(/LOL/)

  })
})
