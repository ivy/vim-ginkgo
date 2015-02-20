if exists('b:current_syntax')
  finish
endif

runtime! syntax/go.vim
unlet! b:current_syntax

" Ginkgo keywords

syntax keyword ginkgoCallbacks AfterEach AfterSuite BeforeEach BeforeSuite JustBeforeEach SynchronizedAfterSuite SynchronizedBeforeSuite
highlight link ginkgoCallbacks Identifier

syntax keyword ginkgoGroups Context Describe It By
highlight link ginkgoGroups Statement

syntax keyword ginkgoFocusedGroups FContext FDescribe FIt FMeasure
highlight link ginkgoFocusedGroups Underlined

syntax keyword ginkgoPendingGroups PContext XContext PDescribe XDescribe PIt XIt PMeasure XMeasure
highlight link ginkgoPendingGroups Comment

" Gomega keywords

syntax keyword ginkgoAssertions Expect Ω Consistently Eventually Should ShouldNot To ToNot NotTo
highlight link ginkgoAssertions Constant

syntax keyword ginkgoMatchers BeAssignableToTypeOf BeClosed BeEmpty BeEquivalentTo BeFalse BeNil BeNumerically BeSent BeTemporarily BeTrue BeZero ConsistOf ContainElement ContainSubstring Equal HaveKey HaveKeyWithValue HaveLen HaveOccurred HavePrefix HaveSuffix MatchError MatchJSON MatchRegexp Panic Receive Succeed
highlight link ginkgoMatchers Function

" Agouti keywords

syntax keyword ginkgoAgoutiCallbacks Background
highlight link ginkgoAgoutiCallbacks Identifier

syntax keyword ginkgoAgoutiGroups Feature Scenario Step
highlight link ginkgoAgoutiGroups Statement

syntax keyword ginkgoAgoutiFocusedGroups FFeature FScenario
highlight link ginkgoAgoutiFocusedGroups Underlined

syntax keyword ginkgoAgoutiPendingGroups PFeature PScenario XFeature XScenario
highlight link ginkgoAgoutiPendingGroups Comment

syntax keyword ginkgoAgoutiShortcuts Back CancelPopup Check ClearCookies Click CloseWindow ConfirmPopup CreatePage CustomPage DeleteCookie Destroy DoubleClick EnterPopupText Fill Forward Navigate NextWindow Refresh RunScript Screenshot Select SetCookie Size StartChromeDriver StartPhantomJS StartSelenium StopWebDriver Submit SwitchToFrame SwitchToRootFrame SwitchToWindow Uncheck
highlight link ginkgoAgoutiShortcuts Function

syntax keyword ginkgoAgoutiMatchers BeActive BeEnabled BeFound BeSelected BeVisible EqualElement HaveAttribute HaveCSS HaveLoggedError HaveLoggedInfo HavePopupText HaveText HaveTitle HaveURL MatchText
highlight link ginkgoAgoutiMatchers Function

let b:current_syntax = 'ginkgo'
