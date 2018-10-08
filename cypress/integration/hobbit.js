describe('bilbo', () => {
  it('baggins', () => {
    cy.visit('index.html')
    expect(1).to.equal(1)
  })
})

describe('frodo', () => {
  it('samwise', () => {
    cy.visit('index.html')
    expect(3).to.equal(3)
  })
})
