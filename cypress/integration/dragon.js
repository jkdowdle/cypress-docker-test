describe('blue', () => {
  it('dragon', () => {
    cy.visit('index.html')
    expect(1).to.equal(1)
  })
})

describe('dragon', () => {
  it('yellow', () => {
    cy.visit('index.html')
    expect(3).to.equal(3)
  })
})
