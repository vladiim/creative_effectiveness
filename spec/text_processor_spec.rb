# require 'spec_helper'  
# require_relative '../lib/text_processor'

# describe TextProcessor do
#   let(:processor)   { TextProcessor.new(winner_data) }
#   let(:text)        { "                        BRANDED CONTENT & ENTERTAINMENT LIONS\n\n                                                                                                                              \n                        WINNERS 2013\n\n\n\n\n\n                   Title                             Advertiser/Client                 Product/Service                 Entrant Company              Country\n\n Grand Prix\n\nTHE BEAUTY INSIDE                          INTEL + TOSHIBA                    TOSHIBA LAPTOP WITH INTEL INSIDE PEREIRA & O'DELL, San Francisco   USA\n\n Gold Lion\n\nTHE MOVIE OUT HERE                         LABATT BREWERIES OF CANADA         KOKANEE                          GRIP LIMITED, Toronto             CANADA\n\n\nA BOY AND HIS ATOM: THE WORLD'S SMALLEST   IBM                                IBM RESEARCH                     OGILVY NEW YORK                   USA\nMOVIE\n\nREAL BEAUTY SKETCHES                       UNILEVER                           DOVE MASTERBRAND                 OGILVY BRASIL, São Paulo          BRAZIL\n\nDEFORESTED FIELD                           WWF                                WWF                              GREY 141 GROUP, São Paulo         BRAZIL\n\nBUILDING THE PEOPLE'S CAR                  VOLKSWAGEN GROUP CHINA             THE PEOPLE'S CAR PROJECT         PROXIMITY BEIJING                 CHINA\n\nDOUBLE LOOP DARE                           MATTEL                             HOT WHEELS                       MISTRESS, Venice                  USA\n\nYES, VIRGINIA THE MUSICAL                  MACY'S                             DEPARTMENT STORE                 JWT NEW YORK                      USA\n\n\nDUMB WAYS TO DIE                           METRO TRAINS                       METRO TRAINS                     McCANN MELBOURNE                  AUSTRALIA\n\nSECRET PLACE                               NESTLE WATERS                      PERRIER                          OGILVY FRANCE, Paris              FRANCE\n\nDIKEMBE MUTOMBO'S 4 1/2 WEEKS TO SAVE THE  OLD SPICE                          OLD SPICE CHAMPION               WIEDEN+KENNEDY, Portland          USA\nWORLD\n\nSEND YOUR FACEBOOK PROFILE TO CAPE TOWN    CAPE TOWN TOURISM                  CAPE TOWN                        OGILVY & MATHER CAPE TOWN         SOUTH AFRICA\n\nSCREEN-AGE LOVE STORY                      PLDT                               MYDSL                            ACE SAATCHI & SAATCHI, Manila     THE PHILIPPINES\n\nDUMB WAYS TO DIE                           METRO TRAINS                       METRO TRAINS                     McCANN MELBOURNE                  AUSTRALIA\n\n\nPROMETHEUS INTEGRATED CAMPAIGN             TWENTIETH CENTURY FOX              PROMETHEUS FILM                  IGNITION INTERACTIVE, Santa MonicaUSA\n\nTHE BEAUTY INSIDE                          INTEL + TOSHIBA                    TOSHIBA LAPTOP WITH INTEL INSIDE PEREIRA & O'DELL, San Francisco   USA\n\nTHE MOVIE OUT HERE                         LABATT BREWERIES OF CANADA         KOKANEE                          GRIP LIMITED, Toronto             CANADA\n\nSCREEN-AGE LOVE STORY                      PLDT                               MYDSL                            ACE SAATCHI & SAATCHI, Manila     THE PHILIPPINES\n\n Silver Lion\n\nLOVE IN THE END                            MONDELEZ INTERNATIONAL             LACTA                            OGILVYONE WORLDWIDE ATHENS        GREECE\n\nUNCLE DREW                                 PEPSI                              PEPSI MAX                        THE MARKETING ARM, Dallas         USA\n\n\nFROM SHELTER TO STAGE                      MARS PETCARE US                    PEDIGREE®                        STARCOM MEDIAVEST GROUP, Chicago  USA" }
#   let(:category)    { 'CATEGORY' }
#   let(:winner_data) { OpenStruct.new(text: text, year: 2012, category: category) }

#   describe '.initialize' do
#     it 'sets up the attrs' do
#       processor.year.should     eq 2012
#       processor.text.should     eq text
#       processor.category.should eq category
#       processor.titles.should    eq []
#       processor.clients.should   eq []
#       processor.products.should  eq []
#       processor.agencies.should   eq []
#       processor.countries.should  eq []
#       processor.awards.should    eq []
#     end
#   end

#   describe '.extract_details' do
#     before { processor.extract_details }

#     it 'sets the awards' do
#       processor.awards[0].should  eq 'Grand Prix'
#       processor.awards[1].should  eq 'Gold Lion'
#       processor.awards[15].should eq 'Silver Lion'
#       processor.awards[25].should eq 'Bronze Lion'
#     end
#   end
# end