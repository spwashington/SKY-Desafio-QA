class ProgrammingPageUtils < SitePrism::Page
    set_url 'programacao'
    element :m_CurrentBroadcast, '.schedule-inner.schedule-live', match: :first
    element :m_CurrentBroadcastTitle, '.schedule-inner.schedule-live .program-schedule-title', match: :first
    element :m_CurrentBroadcastDuration, '.schedule-inner.schedule-live .program-duration', match: :first
    element :m_ModalProgramming, '.sky-modal-program-wapper', match: :first
    element :m_NavButtonSelected, '.btn.linkMedium.secondaryWeb.active', match: :first
end