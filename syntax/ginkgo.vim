if exists('b:current_syntax')
  finish
endif

runtime! syntax/go.vim
unlet! b:current_syntax

" Ginkgo keywords

syntax keyword ginkgoCallbacks AfterEach AfterSuite BeforeEach BeforeSuite JustBeforeEach SynchronizedAfterSuite SynchronizedBeforeSuite
highlight link ginkgoCallbacks Identifier

syntax keyword ginkgoGroups Context Describe It
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

let b:current_syntax = 'ginkgo'
