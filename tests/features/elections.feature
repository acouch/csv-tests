Feature: Elections

  Scenario Outline: Verifying election results
    When I visit the election file
    And I search for candidate <candidate> running for <office> in the <ward> in <county>
    Then I should see <votes> out of <total>

  Examples: example-election-result.csv
    | candidate                    | county    | office   | ward                         | votes | total |
    | CINDI DUCHOW                 | WAUKESHA  | Assembly | TOWN OF MERTON Wards 1-11    | 161   | 173   |
    | THOMAS D. HIBBARD (WRITE-IN) | WAUKESHA  | Assembly | VILLAGE OF DOUSMAN Wards 1-3 | 4     | 63    |
    | JAN BRAKKEN (WRITE-IN)       | WAUKESHA  | Assembly | VILLAGE OF WALES WARDS 1-4   | 4     | 106   |
